<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>File List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
            background: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            border-radius: 8px;
        }
        h1 {
            color: #6495ED;
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            text-align: left;
            padding: 12px;
            border: 1px solid #ddd;
        }
        th {
            background-color: #6495ED;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        button {
            background-color: #6495ED;
            color: white;
            border: none;
            padding: 8px 12px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #4169E1;
        }
        .action-buttons {
            display: flex;
            gap: 8px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>File List</h1>
        <table>
            <thead>
                <tr>
                    <th>File Name</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $folder = 'docs'; // Specify the folder containing files
                if (is_dir($folder)) {
                    $files = array_diff(scandir($folder), array('.', '..'));
                    foreach ($files as $file) {
                        echo '<tr>';
                        echo '<td>' . htmlspecialchars($file) . '</td>';
                        echo '<td class="action-buttons">';
                        echo '<form action="view.php" method="get" style="display:inline;">
                                <input type="hidden" name="file" value="' . htmlspecialchars($file) . '">
                                <button type="submit">View</button>
                              </form>';
                        echo '<form action="importar.php" method="get" style="display:inline;">
                                <input type="hidden" name="file" value="' . htmlspecialchars($file) . '">
                                <button type="submit">Importar</button>
                              </form>';
                        echo '</td>';
                        echo '</tr>';
                    }
                } else {
                    echo '<tr><td colspan="2">No files found</td></tr>';
                }
                ?>
            </tbody>
        </table>
    </div>
</body>
</html>
