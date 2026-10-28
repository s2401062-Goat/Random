<!DOCTYPE html>
<html lang="zh-HK">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>長者健康監測 - 課堂示範</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+HK:wght@400;500;700;900&display=swap');

        /* Theme Variables */
        :root {
            --bg-body: #f3f4f6;
            --phone-bg: #ffffff;
            --phone-border: #1f2937;
            --text-primary: #1f2937;
            --text-secondary: #4b5563;
            --text-title: #111827;
            
            --btn-primary-bg: #2563eb;
            --btn-primary-text: #ffffff;
            --btn-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
            
            --panel-bg: #f9fafb;
            --panel-border: #d1d5db;
            
            --safe-bg: #dcfce7;
            --safe-text: #166534;
            --safe-border: #22c55e;
            
            --warning-bg: #fee2e2;
            --warning-text: #991b1b;
            --warning-border: #ef4444;
            
            --processing-bg: #e0f2fe;
            --processing-text: #075985;
            
            --footer-bg: #f3f4f6;
            --footer-text: #4b5563;
        }

        /* Neon Theme */
        [data-theme="neon"] {
            --bg-body: #0a0a0a;
            --phone-bg: #111;
            --phone-border: #333;
            --text-primary: #e0e0e0;
            --text-secondary: #a0a0a0;
            --text-title: #0ff;
            
            --btn-primary-bg: transparent;
            --btn-primary-text: #0ff;
            --btn-shadow: 0 0 15px rgba(0, 255, 255, 0.5);
            
            --panel-bg: #1a1a1a;
            --panel-border: #0ff;
            
            --safe-bg: #002200;
            --safe-text: #0f0;
            --safe-border: #0f0;
            
            --warning-bg: #330000;
            --warning-text: #f00;
            --warning-border: #f00;
            
            --processing-bg: #001133;
            --processing-text: #0af;
            
            --footer-bg: #111;
            --footer-text: #888;
        }

        /* Glassmorphism Theme */
        [data-theme="glass"] {
            --bg-body: linear-gradient(135deg, #f6d365 0%, #fda085 100%);
            --phone-bg: rgba(255, 255, 255, 0.25);
            --phone-border: rgba(255, 255, 255, 0.4);
            --text-primary: #1f2937;
            --text-secondary: #374151;
            --text-title: #111827;
            
            --btn-primary-bg: rgba(255, 255, 255, 0.4);
            --btn-primary-text: #111827;
            --btn-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
            
            --panel-bg: rgba(255, 255, 255, 0.3);
            --panel-border: rgba(255, 255, 255, 0.5);
            
            --safe-bg: rgba(220, 252, 231, 0.7);
            --safe-text: #166534;
            --safe-border: rgba(34, 197, 94, 0.5);
            
            --warning-bg: rgba(254, 226, 226, 0.7);
            --warning-text: #991b1b;
            --warning-border: rgba(239, 68, 68, 0.5);
            
            --processing-bg: rgba(224, 242, 254, 0.7);
            --processing-text: #075985;
            
            --footer-bg: rgba(255, 255, 255, 0.2);
            --footer-text: #1f2937;
        }

        /* Technological Theme */
        [data-theme="tech"] {
            --bg-body: #0f172a;
            --phone-bg: #1e293b;
            --phone-border: #475569;
            --text-primary: #cbd5e1;
            --text-secondary: #94a3b8;
            --text-title: #38bdf8;
            
            --btn-primary-bg: #0369a1;
            --btn-primary-text: #f0f9ff;
            --btn-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.5);
            
            --panel-bg: #334155;
            --panel-border: #64748b;
            
            --safe-bg: #064e3b;
            --safe-text: #34d399;
            --safe-border: #10b981;
            
            --warning-bg: #7f1d1d;
            --warning-text: #fca5a5;
            --warning-border: #ef4444;
            
            --processing-bg: #0c4a6e;
            --processing-text: #7dd3fc;
            
            --footer-bg: #1e293b;
            --footer-text: #64748b;
        }

        /* Warm Sunset Theme */
        [data-theme="sunset"] {
            --bg-body: #fef3c7;
            --phone-bg: #fffbeb;
            --phone-border: #b45309;
            --text-primary: #451a03;
            --text-secondary: #78350f;
            --text-title: #d97706;
            
            --btn-primary-bg: #d97706;
            --btn-primary-text: #ffffff;
            --btn-shadow: 0 4px 10px rgba(217, 119, 6, 0.3);
            
            --panel-bg: #fef3c7;
            --panel-border: #fcd34d;
            
            --safe-bg: #dcfce7;
            --safe-text: #14532d;
            --safe-border: #16a34a;
            
            --warning-bg: #fee2e2;
            --warning-text: #7f1d1d;
            --warning-border: #dc2626;
            
            --processing-bg: #fef3c7;
            --processing-text: #92400e;
            
            --footer-bg: #fde68a;
            --footer-text: #78350f;
        }

        /* Emerald Care Theme */
        [data-theme="emerald"] {
            --bg-body: #064e3b;
            --phone-bg: #022c22;
            --phone-border: #059669;
            --text-primary: #ecfdf5;
            --text-secondary: #a7f3d0;
            --text-title: #34d399;
            
            --btn-primary-bg: #059669;
            --btn-primary-text: #ffffff;
            --btn-shadow: 0 4px 12px rgba(16, 185, 129, 0.4);
            
            --panel-bg: #065f46;
            --panel-border: #10b981;
            
            --safe-bg: #022c22;
            --safe-text: #6ee7b7;
            --safe-border: #34d399;
            
            --warning-bg: #450a0a;
            --warning-text: #fca5a5;
            --warning-border: #f87171;
            
            --processing-bg: #064e3b;
            --processing-text: #a7f3d0;
            
            --footer-bg: #022c22;
            --footer-text: #6ee7b7;
        }

        /* Cyber Violet Theme */
        [data-theme="cyber-purple"] {
            --bg-body: #1e1b4b;
            --phone-bg: #0f172a;
            --phone-border: #8b5cf6;
            --text-primary: #e0e7ff;
            --text-secondary: #c7d2fe;
            --text-title: #c084fc;
            
            --btn-primary-bg: #7c3aed;
            --btn-primary-text: #ffffff;
            --btn-shadow: 0 0 15px rgba(139, 92, 246, 0.5);
            
            --panel-bg: #312e81;
            --panel-border: #6366f1;
            
            --safe-bg: #064e3b;
            --safe-text: #34d399;
            --safe-border: #10b981;
            
            --warning-bg: #831843;
            --warning-text: #fbcfe8;
            --warning-border: #f43f5e;
            
            --processing-bg: #2e1065;
            --processing-text: #d8b4fe;
            
            --footer-bg: #0f172a;
            --footer-text: #a5b4fc;
        }

        /* Monochrome Minimalist Theme */
        [data-theme="monochrome"] {
            --bg-body: #e5e5e5;
            --phone-bg: #18181b;
            --phone-border: #3f3f46;
            --text-primary: #f4f4f5;
            --text-secondary: #a1a1aa;
            --text-title: #ffffff;
            
            --btn-primary-bg: #3f3f46;
            --btn-primary-text: #ffffff;
            --btn-shadow: 0 4px 6px rgba(0, 0, 0, 0.3);
            
            --panel-bg: #27272a;
            --panel-border: #52525b;
            
            --safe-bg: #18181b;
            --safe-text: #4ade80;
            --safe-border: #22c55e;
            
            --warning-bg: #18181b;
            --warning-text: #f87171;
            --warning-border: #ef4444;
            
            --processing-bg: #27272a;
            --processing-text: #e4e4e7;
            
            --footer-bg: #09090b;
            --footer-text: #a1a1aa;
        }

        body {
            top: 0px !important;
        }
        #google_translate_element {
            display: none; /* Hide default widget */
        }
        /* Custom Select Styling */
        .custom-select-wrapper {
            position: absolute;
            top: 50px;
            right: 20px;
            z-index: 50;
            display: flex;
            gap: 10px;
            flex-direction: column;
            align-items: flex-end;
        }

        .custom-select {
            padding: 8px 12px;
            border-radius: 8px;
            background-color: var(--panel-bg);
            color: var(--text-primary);
            border: 1px solid var(--panel-border);
            font-size: 14px;
            cursor: pointer;
            outline: none;
            box-shadow: var(--btn-shadow);
        }
        
        [data-theme="neon"] .custom-select {
            border: 1px solid var(--text-title);
            box-shadow: 0 0 10px rgba(0, 255, 255, 0.3);
        }

        .text-body {
            font-size: 24px;
            color: var(--text-primary);
            line-height: 1.5;
        }

        .text-title {
            font-size: 32px;
            font-weight: 700;
            color: var(--text-title);
        }
        
        [data-theme="neon"] .text-title {
            text-shadow: 0 0 10px rgba(0, 255, 255, 0.7);
        }

        .text-huge {
            font-size: 72px;
            font-weight: 900;
            line-height: 1;
            color: var(--text-primary);
        }

        .btn-primary {
            min-height: 80px;
            border-radius: 20px;
            font-size: 28px;
            font-weight: 700;
            transition: all 0.2s;
            background-color: var(--btn-primary-bg);
            color: var(--btn-primary-text);
            box-shadow: var(--btn-shadow);
            border: none;
            cursor: pointer;
        }
        
        [data-theme="neon"] .btn-primary {
            border: 2px solid var(--text-title);
            background-color: transparent;
        }
        
        [data-theme="glass"] .btn-primary {
            backdrop-filter: blur(4px);
            border: 1px solid rgba(255, 255, 255, 0.4);
        }

        .btn-primary:active {
            transform: scale(0.98);
        }

        /* Dynamic State Colors */
        .bg-safe { background-color: var(--safe-bg); }
        .text-safe { color: var(--safe-text); }
        .border-safe { border-color: var(--safe-border); }

        .bg-warning { background-color: var(--warning-bg); }
        .text-warning { color: var(--warning-text); }
        .border-warning { border-color: var(--warning-border); }
        
        .bg-processing { background-color: var(--processing-bg); }
        .text-processing { color: var(--processing-text); }

        .footer-disclaimer {
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            background-color: var(--footer-bg);
            padding: 16px;
            text-align: center;
            font-size: 18px;
            color: var(--footer-text);
            border-top: 1px solid var(--panel-border);
            font-weight: 500;
        }

        .progress-ring__circle {
            transition: stroke-dashoffset 1s linear;
            transform: rotate(-90deg);
            transform-origin: 50% 50%;
        }

        .hidden-view {
            display: none !important;
        }
        
        .settings-btn-wrapper {
            position: absolute;
            top: 50px;
            left: 20px;
            z-index: 50;
            transition: opacity 0.3s;
        }

        .settings-btn {
            width: 44px;
            height: 44px;
            border-radius: 50%;
            background-color: var(--panel-bg);
            color: var(--text-primary);
            border: 1px solid var(--panel-border);
            font-size: 20px;
            cursor: pointer;
            box-shadow: var(--btn-shadow);
            display: flex;
            align-items: center;
            justify-content: center;
            transition: all 0.2s;
        }
        
        .settings-btn:active {
            transform: scale(0.9);
        }
        
        [data-theme="neon"] .settings-btn {
            border: 1px solid var(--text-title);
            box-shadow: 0 0 10px rgba(0, 255, 255, 0.3);
            background: transparent;
            color: var(--text-title);
        }

        .btn-secondary {
            border-radius: 16px;
            background-color: var(--panel-bg);
            color: var(--text-primary);
            border: 2px solid var(--panel-border);
            box-shadow: var(--btn-shadow);
            cursor: pointer;
            transition: all 0.2s;
            text-align: left;
        }
        
        [data-theme="neon"] .btn-secondary {
            background-color: transparent;
            border-color: var(--text-title);
            color: var(--text-primary);
        }
        
        .btn-secondary:active {
            transform: scale(0.98);
            background-color: var(--phone-border);
        }

        /* Text Size Modifiers */
        .text-large-mode .text-body { font-size: 28px !important; }
        .text-large-mode .text-title { font-size: 38px !important; }
        .text-large-mode .btn-primary { font-size: 32px !important; }

        /* Panel styling for inputs */
        .control-panel {
            background-color: var(--panel-bg);
            border-color: var(--panel-border);
            color: var(--text-primary);
        }

        /* Cool Typewriter Blinking Cursor Effect */
        .typewriter-container {
            display: inline;
        }

        .typewriter-cursor {
            display: inline-block;
            font-weight: 900;
            color: var(--text-title);
            animation: blinkCursor 0.5s infinite steps(2, start);
            margin-left: 2px;
        }

        @keyframes blinkCursor {
            0%, 100% { opacity: 1; }
            50% { opacity: 0; }
        }

        @keyframes rainbowGlow {
            0% { color: #ff2d55; text-shadow: 0 0 12px #ff2d55, 0 0 25px #ff2d55; }
            20% { color: #ff9500; text-shadow: 0 0 12px #ff9500, 0 0 25px #ff9500; }
            40% { color: #ffcc00; text-shadow: 0 0 12px #ffcc00, 0 0 25px #ffcc00; }
            60% { color: #4cd964; text-shadow: 0 0 12px #4cd964, 0 0 25px #4cd964; }
            80% { color: #5ac8fa; text-shadow: 0 0 12px #5ac8fa, 0 0 25px #5ac8fa; }
            100% { color: #ff2d55; text-shadow: 0 0 12px #ff2d55, 0 0 25px #ff2d55; }
        }

        .rainbow-neon {
            animation: rainbowGlow 3s linear infinite;
            font-weight: 900;
            display: inline-block;
        }

        .supporter-badge-1 {
            background: linear-gradient(135deg, #f59e0b, #d97706);
            color: #ffffff;
            padding: 6px 16px;
            border-radius: 14px;
            font-weight: bold;
            box-shadow: 0 0 10px rgba(245, 158, 11, 0.6);
            display: inline-block;
        }

        .supporter-badge-2 {
            background: linear-gradient(135deg, #ec4899, #8b5cf6);
            color: #ffffff;
            padding: 6px 16px;
            border-radius: 14px;
            font-weight: bold;
            box-shadow: 0 0 10px rgba(236, 72, 153, 0.6);
            display: inline-block;
        }

        .supporter-badge-3 {
            background: linear-gradient(135deg, #06b6d4, #3b82f6);
            color: #ffffff;
            padding: 6px 16px;
            border-radius: 14px;
            font-weight: bold;
            box-shadow: 0 0 10px rgba(6, 182, 212, 0.6);
            display: inline-block;
        }

        .supporter-badge-4 {
            background: linear-gradient(135deg, #10b981, #059669);
            color: #ffffff;
            padding: 6px 16px;
            border-radius: 14px;
            font-weight: bold;
            box-shadow: 0 0 10px rgba(16, 185, 129, 0.6);
            display: inline-block;
        }
    </style>
</head>
<body data-theme="default">

    <div class="phone-frame">
        <!-- Status Bar -->
        <div class="status-bar">
            <span id="clock">12:00</span>
            <div class="flex items-center space-x-2">
                <i class="fas fa-signal text-sm"></i>
                <i class="fas fa-wifi text-sm"></i>
                <i class="fas fa-battery-three-quarters text-lg"></i>
            </div>
        </div>

        <!-- Settings Button -->
        <div id="settings-btn-container" class="settings-btn-wrapper translate-no">
            <button onclick="switchView('view-settings')" class="settings-btn">
                <i class="fas fa-cog"></i>
            </button>
        </div>

        <!-- Custom Modal Overlay (replacing native alerts) -->
        <div id="custom-modal" class="fixed inset-0 z-50 flex items-center justify-center hidden-view" style="background-color: rgba(0,0,0,0.7); position: absolute;">
            <div class="rounded-3xl p-6 w-10/12 text-center" style="background-color: var(--panel-bg); border: 2px solid var(--panel-border); box-shadow: var(--btn-shadow);">
                <div class="text-4xl mb-4 text-center mx-auto" style="color: var(--text-title);"><i class="fas fa-info-circle"></i></div>
                <h3 id="modal-title" class="text-title text-2xl mb-4">提示</h3>
                <p id="modal-message" class="text-body mb-8 text-left inline-block">內容</p>
                <button onclick="closeModal()" class="btn-primary w-full py-3 text-xl" style="min-height: 60px;">明白</button>
            </div>
        </div>

        <!-- Controls Wrapper (Language & Theme) -->
        <div id="controls-container" class="custom-select-wrapper translate-no">
            <!-- AI Translation Status Toast -->
            <div id="ai-trans-toast" class="hidden text-xs bg-blue-600 text-white px-3 py-1 rounded-lg shadow-md animate-pulse">
                <i class="fas fa-robot mr-1"></i> Gemini AI 翻譯中...
            </div>
            
            <!-- Custom Language Dropdown -->
            <select id="lang-selector" class="custom-select" onchange="changeLanguage(this.value)">
                <option value="zh-TW">繁體中文</option>
                <option value="zh-CN">简体中文</option>
                <option value="en">English</option>
                <option value="ja">日本語</option>
                <option value="ko">한국어</option>
                <option value="es">Español</option>
                <option value="fr">Français</option>
                <option value="de">Deutsch</option>
                <option value="th">ไทย</option>
                <option value="vi">Tiếng Việt</option>
                <option value="id">Bahasa Indonesia</option>
                <option value="tl">Tagalog</option>
                <option value="hi">हिन्दी</option>
                <option value="ar">العربية</option>
                <option value="ru">Русский</option>
                <option value="pt">Português</option>
                <option value="it">Italiano</option>
            </select>

            <!-- Theme Dropdown -->
            <select id="theme-selector" class="custom-select" onchange="changeTheme(this.value)">
                <option value="default">預設主題 (Default)</option>
                <option value="sunset">溫馨暖陽 (Warm Sunset)</option>
                <option value="emerald">翡翠健康 (Emerald Care)</option>
                <option value="cyber-purple">魅紫星空 (Cyber Violet)</option>
                <option value="neon">霓虹燈 (Neon)</option>
                <option value="glass">玻璃擬物 (Glass)</option>
                <option value="tech">科技感 (Tech)</option>
                <option value="monochrome">極簡黑白 (Monochrome)</option>
            </select>
        </div>

        <div id="view-home" class="app-content p-6 flex flex-col justify-center items-center h-full text-center">
            
            <div class="mb-6 mt-16">
                <div class="bg-blue-100 text-blue-800 rounded-full w-32 h-32 flex items-center justify-center mx-auto mb-4 shadow-inner" style="background-color: var(--panel-bg); color: var(--text-title);">
                    <i class="fas fa-heartbeat text-6xl"></i>
                </div>
                <!-- Streaming text container for home title & description -->
                <h1 id="home-title" class="text-title mb-2">健康小幫手</h1>
                <p id="home-desc" class="text-body text-xl">按下面大按鈕，開始量度心跳和血氧。</p>
            </div>

            <button onclick="startMeasurement()" class="btn-primary w-full py-4 flex flex-col items-center justify-center space-y-2 mb-4">
                <span>開始量度</span>
                <span class="text-lg font-normal opacity-90"><i class="fas fa-hand-pointer mr-2"></i>按這裡</span>
            </button>
            
            <div class="grid grid-cols-3 gap-2 w-full mb-4">
                <button onclick="switchView('view-history')" class="btn-secondary py-3 px-2 text-center flex flex-col items-center justify-center rounded-2xl">
                    <i class="fas fa-history text-2xl mb-1" style="color: var(--text-title);"></i>
                    <span class="text-sm font-bold">歷史紀錄</span>
                </button>
                <button onclick="switchView('view-stats')" class="btn-secondary py-3 px-2 text-center flex flex-col items-center justify-center rounded-2xl">
                    <i class="fas fa-chart-line text-2xl mb-1" style="color: var(--text-title);"></i>
                    <span class="text-sm font-bold">數據統計</span>
                </button>
                <button onclick="switchView('view-info')" class="btn-secondary py-3 px-2 text-center flex flex-col items-center justify-center rounded-2xl">
                    <i class="fas fa-info-circle text-2xl mb-1" style="color: var(--text-title);"></i>
                    <span class="text-sm font-bold">團隊資訊</span>
                </button>
            </div>

            <div class="p-3 rounded-2xl border-2 border-dashed control-panel w-full">
                <p class="text-lg font-bold mb-1 opacity-70">⚙️ 課堂控制台 (僅供測試)</p>
                <label class="block text-base mb-1">設定示範心跳: <span id="demo-hr-val" class="font-bold" style="color: var(--text-title);">75</span></label>
                <input type="range" id="demo-hr-slider" min="40" max="130" value="75" class="w-full h-4 rounded-lg appearance-none cursor-pointer" style="background-color: var(--phone-border);" oninput="updateDemoSlider()">
            </div>
        </div>

        <div id="view-history" class="app-content p-6 flex flex-col h-full hidden-view">
            <div class="flex items-center mb-6 mt-16 border-b pb-4" style="border-color: var(--panel-border);">
                <button onclick="switchView('view-home')" class="text-3xl mr-4 p-2 rounded-full" style="color: var(--text-primary); background-color: var(--panel-bg);">
                    <i class="fas fa-arrow-left"></i>
                </button>
                <h2 class="text-title m-0 text-2xl">測量歷史紀錄</h2>
            </div>
            
            <div id="history-list-container" class="space-y-4 overflow-y-auto flex-1 pr-1">
                <!-- Dynamic history cards inserted by JS -->
            </div>

            <button onclick="clearHistoryData()" class="mt-4 text-lg py-3 px-4 rounded-xl border border-red-500 text-red-500 font-bold w-full bg-transparent hover:bg-red-500 hover:text-white transition">
                <i class="fas fa-trash mr-2"></i>清除所有紀錄
            </button>
        </div>

        <div id="view-stats" class="app-content p-6 flex flex-col h-full hidden-view">
            <div class="flex items-center mb-6 mt-16 border-b pb-4" style="border-color: var(--panel-border);">
                <button onclick="switchView('view-home')" class="text-3xl mr-4 p-2 rounded-full" style="color: var(--text-primary); background-color: var(--panel-bg);">
                    <i class="fas fa-arrow-left"></i>
                </button>
                <h2 class="text-title m-0 text-2xl">健康數據分析</h2>
            </div>
            
            <div class="space-y-4 flex-1">
                <div class="p-5 rounded-2xl border flex items-center justify-between" style="background-color: var(--panel-bg); border-color: var(--panel-border);">
                    <div>
                        <p class="text-lg opacity-80">總量度次數</p>
                        <p id="stat-total-count" class="text-4xl font-bold mt-1">0 次</p>
                    </div>
                    <i class="fas fa-stethoscope text-4xl opacity-50" style="color: var(--text-title);"></i>
                </div>

                <div class="grid grid-cols-2 gap-4">
                    <div class="p-4 rounded-2xl border" style="background-color: var(--panel-bg); border-color: var(--panel-border);">
                        <p class="text-base opacity-80">平均心率</p>
                        <p id="stat-avg-hr" class="text-3xl font-bold mt-1 text-red-500">-- bpm</p>
                    </div>
                    <div class="p-4 rounded-2xl border" style="background-color: var(--panel-bg); border-color: var(--panel-border);">
                        <p class="text-base opacity-80">平均血氧</p>
                        <p id="stat-avg-spo2" class="text-3xl font-bold mt-1 text-blue-500">-- %</p>
                    </div>
                </div>

                <div class="p-5 rounded-2xl border" style="background-color: var(--panel-bg); border-color: var(--panel-border);">
                    <p class="text-lg font-bold mb-3">健康指數分佈</p>
                    <div class="flex justify-between text-base mb-2">
                        <span>健康狀態: <span id="stat-safe-count" class="font-bold text-green-600">0</span></span>
                        <span>需留意: <span id="stat-warning-count" class="font-bold text-red-600">0</span></span>
                    </div>
                    <div class="w-full h-4 bg-gray-300 rounded-full overflow-hidden flex">
                        <div id="stat-bar-safe" class="bg-green-500 h-full transition-all duration-500" style="width: 50%;"></div>
                        <div id="stat-bar-warning" class="bg-red-500 h-full transition-all duration-500" style="width: 50%;"></div>
                    </div>
                </div>
            </div>
        </div>

        <div id="view-info" class="app-content p-6 flex flex-col h-full hidden-view">
            <div class="flex items-center mb-6 mt-16 border-b pb-4" style="border-color: var(--panel-border);">
                <button onclick="switchView('view-home')" class="text-3xl mr-4 p-2 rounded-full" style="color: var(--text-primary); background-color: var(--panel-bg);">
                    <i class="fas fa-arrow-left"></i>
                </button>
                <h2 class="text-title m-0 text-2xl">開發團隊資訊</h2>
            </div>
            
            <div class="space-y-6 flex-1 text-center">
                <div class="p-6 rounded-3xl border shadow-lg" style="background-color: var(--panel-bg); border-color: var(--panel-border);">
                    <p class="text-xl font-bold text-gray-500 mb-2">創作者 / Creator</p>
                    <div class="text-5xl my-4">
                        <span class="rainbow-neon">3B 02</span>
                    </div>
                    <p class="text-base opacity-75">全流程設計與技術開發</p>
                </div>

                <div class="p-6 rounded-3xl border shadow-lg" style="background-color: var(--panel-bg); border-color: var(--panel-border);">
                    <p class="text-xl font-bold text-gray-500 mb-4">支持者 / Supporters</p>
                    <div class="flex flex-wrap justify-center gap-3">
                        <span class="supporter-badge-1 text-2xl">3B 01</span>
                        <span class="supporter-badge-3 text-2xl">3B 11</span>
                        <span class="supporter-badge-4 text-2xl">3B 21</span>
                    </div>
                    <p class="text-base opacity-75 mt-4">特別感謝以上個人及團隊全力支持</p>
                </div>
            </div>
        </div>

        <div id="view-measuring" class="app-content p-6 flex flex-col justify-center items-center h-full text-center hidden-view bg-processing">
            <h2 class="text-title text-processing mb-8 mt-16">正在量度中...</h2>
            
            <!-- Animated Progress Circle -->
            <div class="relative w-64 h-64 mb-8">
                <svg class="w-full h-full" viewBox="0 0 120 120">
                    <circle class="stroke-current opacity-20" stroke-width="12" cx="60" cy="60" r="50" fill="transparent" style="color: var(--processing-text);"></circle>
                    <circle id="progress-circle" class="progress-ring__circle stroke-current" stroke-width="12" stroke-linecap="round" cx="60" cy="60" r="50" fill="transparent" stroke-dasharray="314.159" stroke-dashoffset="0" style="color: var(--processing-text);"></circle>
                </svg>
                <div class="absolute top-0 left-0 w-full h-full flex flex-col items-center justify-center">
                    <span id="countdown" class="text-huge text-processing" style="color: var(--processing-text);">60</span>
                    <span class="text-xl font-bold text-processing mt-2" style="color: var(--processing-text);">秒</span>
                </div>
            </div>

            <p id="measuring-tip" class="text-body text-processing font-bold px-6 py-3 rounded-2xl shadow-sm" style="background-color: var(--phone-bg);">
                請保持手指靜止，<br>平靜呼吸，放鬆心情。
            </p>
            
            <button onclick="cancelMeasurement()" class="mt-12 text-2xl opacity-70 underline font-bold px-6 py-4" style="color: var(--text-primary);">
                取消量度
            </button>
        </div>

        <div id="view-settings" class="app-content p-6 flex flex-col h-full hidden-view">
            <div class="flex items-center mb-10 mt-16 border-b pb-4" style="border-color: var(--panel-border);">
                <button onclick="switchView('view-home')" class="text-4xl mr-4 p-2 rounded-full" style="color: var(--text-primary); background-color: var(--panel-bg);">
                    <i class="fas fa-arrow-left"></i>
                </button>
                <h2 class="text-title m-0">設定</h2>
            </div>
            
            <div class="space-y-4">
                <button onclick="toggleTextSize()" class="btn-secondary w-full py-4 flex items-center justify-between px-6">
                    <span class="text-body font-bold text-xl"><i class="fas fa-font mr-4" style="color: var(--text-title);"></i>文字大小</span>
                    <span id="text-size-status" class="text-body opacity-80 border px-3 py-1 rounded-xl text-lg">標準</span>
                </button>
                
                <button onclick="switchView('view-history')" class="btn-secondary w-full py-4 flex items-center justify-between px-6">
                    <span class="text-body font-bold text-xl"><i class="fas fa-history mr-4" style="color: var(--text-title);"></i>查看歷史紀錄</span>
                    <i class="fas fa-chevron-right opacity-50 text-2xl"></i>
                </button>

                <button onclick="switchView('view-stats')" class="btn-secondary w-full py-4 flex items-center justify-between px-6">
                    <span class="text-body font-bold text-xl"><i class="fas fa-chart-bar mr-4" style="color: var(--text-title);"></i>健康數據統計</span>
                    <i class="fas fa-chevron-right opacity-50 text-2xl"></i>
                </button>

                <button onclick="switchView('view-info')" class="btn-secondary w-full py-4 flex items-center justify-between px-6">
                    <span class="text-body font-bold text-xl"><i class="fas fa-info-circle mr-4" style="color: var(--text-title);"></i>關於與開發團隊</span>
                    <i class="fas fa-chevron-right opacity-50 text-2xl"></i>
                </button>
                
                <button onclick="showModal('意見回饋', '開發團隊感謝您的意見！<br><br><span class=\'opacity-70 text-lg\'>(此為假功能測試)</span>')" class="btn-secondary w-full py-4 flex items-center justify-between px-6">
                    <span class="text-body font-bold text-xl"><i class="fas fa-comment-dots mr-4" style="color: var(--text-title);"></i>聯絡開發者</span>
                    <i class="fas fa-chevron-right opacity-50 text-2xl"></i>
                </button>
                
                <button onclick="showModal('系統提示', '所有暫存資料已成功清除。<br><br><span class=\'opacity-70 text-lg\'>(此為假功能測試)</span>')" class="btn-secondary w-full py-4 flex items-center justify-between px-6">
                    <span class="text-body font-bold text-xl"><i class="fas fa-trash-alt mr-4" style="color: var(--text-title);"></i>清除暫存數據</span>
                    <i class="fas fa-chevron-right opacity-50 text-2xl"></i>
                </button>
            </div>
        </div>

        <div id="view-result" class="app-content p-6 flex flex-col h-full hidden-view">
            <h2 class="text-title text-center mb-6 mt-16">量度結果</h2>
            
            <!-- Result Card -->
            <div id="result-card" class="rounded-3xl p-6 mb-8 border-4 shadow-lg text-center transition-colors duration-500">
                <div id="result-icon" class="text-6xl mb-4">❤️</div>
                
                <div class="flex justify-center items-baseline space-x-2 mb-2">
                    <span id="result-number" class="text-huge">--</span>
                    <span class="text-2xl font-bold">次/分鐘</span>
                </div>
                
                <div class="flex justify-center items-baseline space-x-2 mb-6">
                    <span class="text-2xl font-bold opacity-70">血氧:</span>
                    <span id="result-spo2" class="text-3xl font-bold">98%</span>
                </div>

                <div class="p-4 rounded-xl" style="background-color: var(--phone-bg);">
                    <p id="result-message" class="text-body font-bold"></p>
                </div>
            </div>

            <!-- Action Buttons -->
            <div class="mt-auto space-y-4">
                <button onclick="resetApp()" class="btn-primary w-full flex items-center justify-center">
                    <i class="fas fa-check-circle mr-3 text-3xl"></i> 明白，返回主頁
                </button>
                <button id="emergency-btn" onclick="callHelp()" class="btn-primary w-full bg-red-600 text-white hidden-view flex items-center justify-center" style="background-color: #dc2626; border-color: #b91c1c;">
                    <i class="fas fa-phone-alt mr-3 text-3xl"></i> 聯絡家人 / 999
                </button>
            </div>
        </div>

        <div class="footer-disclaimer">
            ⚠️ 此為課堂示範數據，並非醫療診斷。
        </div>
    </div>

    <script>
        const typewriterTimers = {};

        // --- Typewriter Effect Engine ---
        function runTypewriter(elementId, fullText, charDelay = 50, callback = null, shouldLoop = true) {
            const el = document.getElementById(elementId);
            if (!el) return;

            // Clear any active typewriter timer for this element
            if (typewriterTimers[elementId]) {
                clearTimeout(typewriterTimers[elementId]);
            }

            let charIndex = 0;
            
            function type() {
                if (charIndex <= fullText.length) {
                    const currentStr = fullText.slice(0, charIndex);
                    el.innerHTML = currentStr + `<span class="typewriter-cursor">_</span>`;
                    charIndex++;
                    typewriterTimers[elementId] = setTimeout(type, charDelay);
                } else {
                    // Typing completed: blink cursor 3 times (_ , _ , _) at 500ms interval
                    let blinkCount = 0;
                    const cursorSpan = el.querySelector('.typewriter-cursor');
                    
                    function blink() {
                        if (blinkCount < 6) { // 3 full blink cycles (on/off x 3)
                            if (cursorSpan) {
                                cursorSpan.style.opacity = (blinkCount % 2 === 0) ? '0' : '1';
                            }
                            blinkCount++;
                            typewriterTimers[elementId] = setTimeout(blink, 500);
                        } else {
                            if (callback) callback();
                            if (shouldLoop) {
                                // Loop typewriter animation after 3 blinks
                                charIndex = 0;
                                typewriterTimers[elementId] = setTimeout(type, 500);
                            } else if (cursorSpan) {
                                cursorSpan.remove();
                            }
                        }
                    }
                    blink();
                }
            }

            type();
        }

        let historyRecords = [
            { id: 1, time: '10:15', date: '今日', hr: 72, spo2: 98, status: 'safe' },
            { id: 2, time: '08:30', date: '今日', hr: 105, spo2: 93, status: 'warning' }
        ];

        function changeTheme(themeName) {
            document.body.setAttribute('data-theme', themeName);
        }

        function renderHistory() {
            const container = document.getElementById('history-list-container');
            if (!container) return;

            if (historyRecords.length === 0) {
                container.innerHTML = `
                    <div class="p-8 text-center opacity-60">
                        <i class="fas fa-folder-open text-5xl mb-3"></i>
                        <p class="text-xl">暫無歷史紀錄</p>
                    </div>
                `;
                return;
            }

            container.innerHTML = historyRecords.map(item => `
                <div class="p-4 rounded-2xl border flex items-center justify-between ${item.status === 'safe' ? 'bg-safe border-safe text-safe' : 'bg-warning border-warning text-warning'}">
                    <div>
                        <span class="text-sm opacity-80 block">${item.date} ${item.time}</span>
                        <span class="text-2xl font-bold">${item.hr} <span class="text-base font-normal">bpm</span> | ${item.spo2}% <span class="text-base font-normal">SpO2</span></span>
                    </div>
                    <div class="text-2xl font-bold">
                        ${item.status === 'safe' ? '✅ 正常' : '⚠️ 留意'}
                    </div>
                </div>
            `).join('');
        }

        function renderStats() {
            const totalCount = historyRecords.length;
            document.getElementById('stat-total-count').textContent = totalCount + ' 次';

            if (totalCount === 0) {
                document.getElementById('stat-avg-hr').textContent = '-- bpm';
                document.getElementById('stat-avg-spo2').textContent = '-- %';
                document.getElementById('stat-safe-count').textContent = '0';
                document.getElementById('stat-warning-count').textContent = '0';
                document.getElementById('stat-bar-safe').style.width = '50%';
                document.getElementById('stat-bar-warning').style.width = '50%';
                return;
            }

            const totalHr = historyRecords.reduce((acc, cur) => acc + cur.hr, 0);
            const totalSpo2 = historyRecords.reduce((acc, cur) => acc + cur.spo2, 0);
            const safeCount = historyRecords.filter(r => r.status === 'safe').length;
            const warningCount = historyRecords.filter(r => r.status === 'warning').length;

            const avgHr = Math.round(totalHr / totalCount);
            const avgSpo2 = Math.round(totalSpo2 / totalCount);

            document.getElementById('stat-avg-hr').textContent = avgHr + ' bpm';
            document.getElementById('stat-avg-spo2').textContent = avgSpo2 + ' %';
            document.getElementById('stat-safe-count').textContent = safeCount.toString();
            document.getElementById('stat-warning-count').textContent = warningCount.toString();

            const safePercent = Math.round((safeCount / totalCount) * 100);
            const warningPercent = 100 - safePercent;

            document.getElementById('stat-bar-safe').style.width = safePercent + '%';
            document.getElementById('stat-bar-warning').style.width = warningPercent + '%';
        }

        function clearHistoryData() {
            historyRecords = [];
            renderHistory();
            renderStats();
            showModal('系統提示', '所有歷史紀錄已成功清除。');
        }

        const translationCache = {};
        const baseLanguage = 'zh-TW';
        let currentLanguage = 'zh-TW';

        const textNodesToTranslate = {
            'home-title': '健康小幫手',
            'home-desc': '按下面大按鈕，開始量度心跳和血氧。'
        };

        async function changeLanguage(langCode) {
            currentLanguage = langCode;
            
            if (!langCode || langCode === baseLanguage) {
                applyTranslations(textNodesToTranslate);
                return;
            }

            // Return cached translation if available
            if (translationCache[langCode]) {
                applyTranslations(translationCache[langCode]);
                return;
            }

            const toast = document.getElementById('ai-trans-toast');
            if (toast) toast.classList.remove('hidden');

            try {
                const apiKey = "";
                const apiUrl = `https://generativelanguage.googleapis.com/v1beta/models/gemini-3-flash-preview:generateContent?key=${apiKey}`;
                
                const prompt = `Translate the following UI text strings into target language code "${langCode}". Keep formatting, friendly tone, and emojis intact. Return strictly JSON with the same keys:\n${JSON.stringify(textNodesToTranslate)}`;

                const response = await fetch(apiUrl, {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify({
                        contents: [{ parts: [{ text: prompt }] }],
                        generationConfig: { responseMimeType: "application/json" }
                    })
                });

                const data = await response.json();
                const translatedJsonStr = data.candidates?.[0]?.content?.parts?.[0]?.text;
                if (translatedJsonStr) {
                    const translations = JSON.parse(translatedJsonStr);
                    translationCache[langCode] = translations;
                    applyTranslations(translations);
                }
            } catch (err) {
                console.error("Gemini AI Translation Error:", err);
            } finally {
                if (toast) toast.classList.add('hidden');
            }
        }

        function applyTranslations(translations) {
            const title = translations['home-title'] || textNodesToTranslate['home-title'];
            const desc = translations['home-desc'] || textNodesToTranslate['home-desc'];

            runTypewriter('home-title', title, 50, () => {
                runTypewriter('home-desc', desc, 35);
            });
        }

        function updateHomeLanguageText() {
            const activeTranslations = translationCache[currentLanguage] || textNodesToTranslate;
            applyTranslations(activeTranslations);
        }

        // --- Clock Logic ---
        function updateClock() {
            const now = new Date();
            const options = { timeZone: 'Asia/Hong_Kong', hour: '2-digit', minute: '2-digit', hour12: false };
            document.getElementById('clock').textContent = now.toLocaleTimeString('zh-HK', options);
        }
        setInterval(updateClock, 1000);
        updateClock();

        // --- Demo Control Logic ---
        function updateDemoSlider() {
            const val = document.getElementById('demo-hr-slider').value;
            document.getElementById('demo-hr-val').textContent = val;
        }

        // --- State Management ---
        let countdownInterval;
        let currentSeconds = 60;
        const totalSeconds = 60;
        const circleCircumference = 2 * Math.PI * 50; // r=50

        let isLargeText = false;

        function toggleTextSize() {
            isLargeText = !isLargeText;
            const phoneFrame = document.querySelector('.phone-frame');
            const statusSpan = document.getElementById('text-size-status');
            
            if (isLargeText) {
                phoneFrame.classList.add('text-large-mode');
                statusSpan.textContent = '特大';
            } else {
                phoneFrame.classList.remove('text-large-mode');
                statusSpan.textContent = '標準';
            }
        }

        function showModal(title, message) {
            document.getElementById('modal-title').textContent = title;
            document.getElementById('custom-modal').classList.remove('hidden-view');
            runTypewriter('modal-message', message, 30);
        }

        function closeModal() {
            document.getElementById('custom-modal').classList.add('hidden-view');
        }

        function switchView(viewId) {
            document.getElementById('view-home').classList.add('hidden-view');
            document.getElementById('view-measuring').classList.add('hidden-view');
            document.getElementById('view-result').classList.add('hidden-view');
            document.getElementById('view-settings').classList.add('hidden-view');
            document.getElementById('view-history').classList.add('hidden-view');
            document.getElementById('view-stats').classList.add('hidden-view');
            document.getElementById('view-info').classList.add('hidden-view');
            
            document.getElementById(viewId).classList.remove('hidden-view');

            // Render view-specific data
            if (viewId === 'view-history') renderHistory();
            if (viewId === 'view-stats') renderStats();

            // Hide overlay controls when in settings/info to prevent overlap
            const controls = document.getElementById('controls-container');
            const settingsBtn = document.getElementById('settings-btn-container');
            if (viewId === 'view-settings' || viewId === 'view-info') {
                controls.style.display = 'none';
                settingsBtn.style.display = 'none';
            } else {
                controls.style.display = 'flex';
                settingsBtn.style.display = 'block';
            }

            // Trigger dynamic typing effects on navigation using active language
            if (viewId === 'view-home') {
                updateHomeLanguageText();
            } else if (viewId === 'view-measuring') {
                runTypewriter('measuring-tip', '請保持手指靜止，<br>平靜呼吸，放鬆心情。', 50);
            }
        }

        // --- Measurement Logic ---
        function startMeasurement() {
            switchView('view-measuring');
            
            currentSeconds = 60;
            document.getElementById('countdown').textContent = currentSeconds;
            
            const circle = document.getElementById('progress-circle');
            circle.style.strokeDashoffset = '0';
            
            countdownInterval = setInterval(() => {
                currentSeconds--;
                document.getElementById('countdown').textContent = currentSeconds;
                
                const offset = circleCircumference - (currentSeconds / totalSeconds) * circleCircumference;
                circle.style.strokeDashoffset = offset;

                if (currentSeconds <= 0) {
                    clearInterval(countdownInterval);
                    showResults();
                }
            }, 1000);
        }

        function cancelMeasurement() {
            clearInterval(countdownInterval);
            resetApp();
        }

        // --- Results Logic ---
        function showResults() {
            switchView('view-result');
            
            const hr = parseInt(document.getElementById('demo-hr-slider').value);
            const spo2 = hr > 110 ? Math.floor(Math.random() * (95 - 90 + 1) + 90) : Math.floor(Math.random() * (100 - 95 + 1) + 95); 
            
            document.getElementById('result-number').textContent = hr;
            document.getElementById('result-spo2').textContent = spo2 + '%';

            const resultCard = document.getElementById('result-card');
            const emergencyBtn = document.getElementById('emergency-btn');
            const resultIcon = document.getElementById('result-icon');

            resultCard.className = 'rounded-3xl p-6 mb-8 border-4 shadow-lg text-center transition-colors duration-500';

            let reportMessage = "";
            let recordStatus = "safe";

            if (hr >= 60 && hr <= 100 && spo2 >= 95) {
                resultCard.classList.add('bg-safe', 'border-safe', 'text-safe');
                resultIcon.innerHTML = '✅';
                reportMessage = `您的心跳是每分鐘 ${hr} 次，血氧 ${spo2}%。<br><br>這是一個<b>非常健康</b>的數字，請繼續保持優良的生活習慣！`;
                emergencyBtn.classList.add('hidden-view');
                recordStatus = "safe";
            } else {
                resultCard.classList.add('bg-warning', 'border-warning', 'text-warning');
                resultIcon.innerHTML = '⚠️';
                
                let issue = "";
                if (hr > 100) issue = "偏快";
                else if (hr < 60) issue = "偏慢";
                
                if (spo2 < 95) issue += (issue ? "，且血氧偏低" : "血氧偏低");

                reportMessage = `您的心跳是每分鐘 ${hr} 次，血氧 ${spo2}%。<br><br>目前的數據<b>${issue}</b>。請先坐下休息 5 分鐘，喝口水。如果感到胸口不適或頭暈，請立即通知家人。`;
                
                emergencyBtn.classList.remove('hidden-view');
                recordStatus = "warning";
            }

            // Save measurement record
            const now = new Date();
            const timeStr = now.toLocaleTimeString('zh-HK', { hour: '2-digit', minute: '2-digit', hour12: false });
            historyRecords.unshift({
                id: Date.now(),
                time: timeStr,
                date: '今日',
                hr: hr,
                spo2: spo2,
                status: recordStatus
            });

            // Stream result message via typewriter engine
            runTypewriter('result-message', reportMessage, 50);
        }

        function callHelp() {
            showModal("聯絡家人 / 999", "示範功能：系統會在此時自動撥打預設緊急聯絡人電話，或顯示求助選項。");
        }

        function resetApp() {
            switchView('view-home');
        }

        // Initialize
        updateDemoSlider();
        renderHistory();
        renderStats();

        // Trigger initial home page typewriter effect
        window.addEventListener('load', () => {
            const currentLangVal = document.getElementById('lang-selector').value;
            changeLanguage(currentLangVal);
        });
    </script>
</body>
</html>
