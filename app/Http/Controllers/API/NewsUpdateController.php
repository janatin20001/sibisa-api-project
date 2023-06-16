<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\NewsUpdate;
use Exception;
use Illuminate\Http\Request;

class NewsUpdateController extends Controller
{
    public function index()
    {

        try {
            $data = NewsUpdate::all();

            return response()->json([
                'status' => 200,
                'messages' => 'News fetched successfully',
                'newsData' => $data
            ]);
        } catch (Exception $error) {
            return response()->json([
                'status' => $error->getCode(),
                'message' => $error->getMessage(),
                'newsData' => null
            ]);
        }
    }
}
