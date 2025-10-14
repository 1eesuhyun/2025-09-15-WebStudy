<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>크몽 스타일 검색창</title>

  <!-- ✅ TailwindCSS CDN -->
  <script src="https://cdn.tailwindcss.com"></script>

  <style>
    body {
      display: flex;
      justify-content: center;
      background-color: #f9fafb;
      margin-top: 60px;
      font-family: 'Noto Sans KR', sans-serif;
    }
  </style>
</head>
<body>

  <!-- 전체 컨테이너 -->
  <div class="w-[700px]">

    <!-- 메인 문구 -->
    <h1 class="text-[40px] font-bold leading-[52px] ml-8 text-gray-900">
      성공이 필요한 순간,<br>
      딱 맞는 전문가를 찾아보세요
    </h1>

    <!-- 검색창 영역 -->
    <div class="mr-10 mt-8 w-[628px]">
      <form class="relative my-0 flex w-full justify-center text-sm 
                   shadow-[0px_0px_20px_0px_rgba(0,0,0,0.1)] 
                   rounded-[36px]" role="search">

        <div class="flex h-fit w-full flex-1 flex-col gap-1">
          <div class="inline-flex w-full flex-row overflow-hidden bg-white text-gray-900 
                      transition-colors duration-200 placeholder:text-gray-400 
                      hover:border-black/20 focus-within:!border-black/60 
                      rounded-[36px] border border-gray-400 focus:bg-white 
                      h-[64px] gap-x-6 px-8 py-0">

            <!-- 입력창 -->
            <input class="box-border w-full flex-1 cursor-text border-none bg-transparent 
                          outline-none text-[16px] placeholder:text-gray-400"
                   data-testid="search-input"
                   placeholder="어떤 전문가가 필요하세요?"
                   type="text" maxlength="50"
                   autocomplete="off" autocorrect="off" autocapitalize="none" value="">

            <!-- 돋보기 버튼 -->
            <div class="flex items-center">
              <button type="submit"
                      class="relative inline-flex items-center justify-center rounded-[8px]
                             h-[36px] w-[36px] text-gray-900 hover:bg-gray-200 active:bg-gray-300">
                <svg aria-hidden="true" fill="currentColor" focusable="false"
                     height="24" width="24" viewBox="0 0 24 24">
                  <path clip-rule="evenodd" fill-rule="evenodd"
                        d="M15.5 10C15.5 13.0376 13.0376 15.5 10 15.5C6.96243 15.5 4.5 13.0376 4.5 10C4.5 6.96243 6.96243 4.5 10 4.5C13.0376 4.5 15.5 6.96243 15.5 10ZM14.9401 16.2929C13.5799 17.3622 11.8644 18 10 18C5.58172 18 2 14.4183 2 10C2 5.58172 5.58172 2 10 2C14.4183 2 18 5.58172 18 10C18 11.6512 17.4997 13.1856 16.6425 14.4599L20.8839 18.7011C21.372 19.1893 21.372 19.9807 20.8839 20.4689C20.3957 20.9571 19.6043 20.9571 19.1161 20.4689L14.9401 16.2929Z">
                  </path>
                </svg>
              </button>
            </div>
          </div>
        </div>
      </form>
    </div>

    <!-- 추천 키워드 영역 -->
    <div class="mx-4 mt-5 flex flex-wrap gap-3 mb-[30px] h-9 overflow-hidden">
      <a class="flex h-9 items-center justify-center rounded-full px-4 
                transition-colors duration-300 bg-gray-200 hover:bg-gray-300"
         href="searchResult.jsp?keyword=로고">
        <p class="text-[14px] font-normal text-gray-900">로고</p>
      </a>

      <a class="flex h-9 items-center justify-center rounded-full px-4 bg-gray-200 hover:bg-gray-300"
         href="searchResult.jsp?keyword=명함">
        <p class="text-[14px] font-normal text-gray-900">명함</p>
      </a>

      <a class="flex h-9 items-center justify-center rounded-full px-4 bg-gray-200 hover:bg-gray-300"
         href="searchResult.jsp?keyword=상세페이지">
        <p class="text-[14px] font-normal text-gray-900">상세페이지</p>
      </a>

      <a class="flex h-9 items-center justify-center rounded-full px-4 bg-gray-200 hover:bg-gray-300"
         href="searchResult.jsp?keyword=블로그">
        <p class="text-[14px] font-normal text-gray-900">블로그</p>
      </a>

      <a class="flex h-9 items-center justify-center rounded-full px-4 bg-gray-200 hover:bg-gray-300"
         href="searchResult.jsp?keyword=리뷰">
        <p class="text-[14px] font-normal text-gray-900">리뷰</p>
      </a>

      <a class="flex h-9 items-center justify-center rounded-full px-4 bg-gray-200 hover:bg-gray-300"
         href="searchResult.jsp?keyword=PPT">
        <p class="text-[14px] font-normal text-gray-900">PPT</p>
      </a>

      <a class="flex h-9 items-center justify-center rounded-full px-4 bg-gray-200 hover:bg-gray-300"
         href="searchResult.jsp?keyword=자소서">
        <p class="text-[14px] font-normal text-gray-900">자소서</p>
      </a>

      <a class="flex h-9 items-center justify-center rounded-full px-4 bg-gray-200 hover:bg-gray-300"
         href="searchResult.jsp?keyword=포토샵">
        <p class="text-[14px] font-normal text-gray-900">포토샵</p>
      </a>

      <a class="flex h-9 items-center justify-center rounded-full px-4 bg-gray-200 hover:bg-gray-300"
         href="searchResult.jsp?keyword=영상편집">
        <p class="text-[14px] font-normal text-gray-900">영상편집</p>
      </a>

      <a class="flex h-9 items-center justify-center rounded-full px-4 bg-gray-200 hover:bg-gray-300"
         href="searchResult.jsp?keyword=타로">
        <p class="text-[14px] font-normal text-gray-900">타로</p>
      </a>
    </div>
  </div>

</body>
</html>
