<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>헤더</title>
  <!-- ✅ TailwindCSS CDN -->
  <script src="https://cdn.tailwindcss.com"></script>
  <style>
    body {
      background-color: #fff;
      font-family: 'Noto Sans KR', sans-serif;
    }
  </style>
</head>
<body>

  <!-- ✅ 크몽 스타일 헤더 (로고 + 검색창 + AI 추천 버튼만) -->
  <header class="m-0 mx-auto flex w-[1200px] flex-row items-center p-0 px-4 mt-4">
    
    <!-- 🔹 로고 -->
    <a class="h-[26px] w-[85px] cursor-pointer no-underline" 
       aria-label="홈으로 이동" 
       href="<%=request.getContextPath()%>/index.jsp">
      <svg height="100%" viewBox="0 0 85 26" width="85" xmlns="http://www.w3.org/2000/svg">
        <path d="M77.69 4.86c3.975 0 7.197 3.215 7.197 7.18l-.002.055h.002c.073 3.477.074 5.769.003 6.874-.108 1.659-.724 3.372-1.947 4.693A7.21 7.21 0 0 1 77.593 26c-2.724 0-4.998-.984-6.653-2.921l-.05-.059 3.226-2.684c.837.997 1.938 1.48 3.478 1.48.9 0 1.67-.358 2.259-.992.515-.556.817-1.263.832-1.813v-.443a7.186 7.186 0 0 1-2.995.65c-3.975 0-7.197-3.214-7.197-7.179 0-3.964 3.222-7.178 7.197-7.178zm-32.13-.225c4.131 0 7.48 3.34 7.48 7.46 0 4.121-3.349 7.462-7.48 7.462s-7.48-3.34-7.48-7.461c0-4.12 3.349-7.461 7.48-7.461zM4.533 0v10.354L8.623 5.2h5.309l-5.337 6.726 5.572 7.065h-4.98L4.534 13.42v5.572H0V0h4.533zM29.92 4.86a6.233 6.233 0 0 1 6.233 6.234v7.897H31.96v-7.908a2.04 2.04 0 0 0-4.074-.152l-.006.152v7.908h-4.193v-7.908a2.04 2.04 0 0 0-4.075-.152l-.005.152v7.908h-4.194v-7.897a6.233 6.233 0 0 1 10.371-4.662 6.201 6.201 0 0 1 4.136-1.571zm31.847 0a6.8 6.8 0 0 1 6.8 6.8v7.331h-4.194v-7.34a2.607 2.607 0 0 0-2.441-2.602l-.165-.006a2.607 2.607 0 0 0-2.602 2.442l-.005.165v7.34l-4.193.001v-7.33a6.8 6.8 0 0 1 6.8-6.8zM45.56 8.818a3.282 3.282 0 0 0-3.287 3.279 3.282 3.282 0 0 0 3.287 3.278 3.282 3.282 0 0 0 3.287-3.278 3.282 3.282 0 0 0-3.287-3.279zm32.13.226a3 3 0 0 0-3.003 2.996 3 3 0 0 0 3.003 2.996 3 3 0 0 0 3.003-2.996 3 3 0 0 0-3.003-2.996z"
              fill="#212224" fill-rule="evenodd"></path>
      </svg>
    </a>

    <!-- 🔹 검색창 -->
    <div class="mx-6 w-[500px]">
      <form class="relative flex w-full justify-center text-sm 
                   shadow-[0px_0px_8px_0px_rgba(0,0,0,0.06)] 
                   rounded-[24px]" role="search">

        <div class="flex h-fit w-full flex-1 flex-col gap-1">
          <div class="inline-flex w-full flex-row gap-x-2 overflow-hidden bg-white text-gray-900 
                      transition-colors duration-200 placeholder:text-gray-400 
                      hover:border-black/20 focus-within:!border-black/60 
                      h-[50px] rounded-[36px] border border-gray-400 px-4 focus:bg-white pl-6">

            <!-- 입력창 -->
            <input class="box-border w-full flex-1 cursor-text border-none bg-transparent 
                          outline-none text-[14px] placeholder:text-gray-400 py-2.5"
                   placeholder="어떤 전문가가 필요하세요?"
                   type="text" maxlength="50" autocomplete="off">

            <!-- 돋보기 버튼 -->
            <div class="flex items-center">
              <button type="submit"
                      class="relative inline-flex items-center justify-center 
                             rounded-[8px] h-[36px] w-[36px] text-gray-900 
                             hover:bg-gray-200 active:bg-gray-300">
                <svg aria-hidden="true" fill="currentColor" height="24" width="24" viewBox="0 0 24 24">
                  <path clip-rule="evenodd" fill-rule="evenodd"
                        d="M15.5 10C15.5 13.0376 13.0376 15.5 10 15.5C6.96243 15.5 4.5 13.0376 4.5 10C4.5 6.96243 6.96243 4.5 10 4.5C13.0376 4.5 15.5 6.96243 15.5 10ZM14.9401 16.2929C13.5799 17.3622 11.8644 18 10 18C5.58172 18 2 14.4183 2 10C2 5.58172 5.58172 2 10 2C14.4183 2 18 5.58172 18 10C18 11.6512 17.4997 13.1856 16.6425 14.4599L20.8839 18.7011C21.372 19.1893 21.372 19.9807 20.8839 20.4689C20.3957 20.9571 19.6043 20.9571 19.1161 20.4689L14.9401 16.2929Z"></path>
                </svg>
              </button>

              <!-- 구분선 -->
              <div class="flex h-5 w-px bg-gray-300 mx-2"></div>

              <!-- 🔹 AI 추천 버튼 -->
              <a href="https://kmong.com/search-assistant?categoryId=6" 
                 target="_blank" 
                 rel="noopener noreferrer"
                 class="relative flex h-8 w-[90px] items-center justify-center gap-x-1 
                        rounded-full bg-[linear-gradient(108deg,#E053DD_-26.41%,#823CE6_94.77%)]
                        before:absolute before:inset-0 before:rounded-full before:opacity-0 
                        before:transition-opacity 
                        before:bg-[linear-gradient(0deg,rgba(0,0,0,0.20)_0%,rgba(0,0,0,0.20)_100%),linear-gradient(108deg,#E053DD_-26.41%,#823CE6_94.77%)]
                        hover:before:opacity-100">
                <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 19 19" fill="none"
                     class="relative z-10">
                  <path d="M0.427888 11.1364C0.276781 11.1394 0.133634 11.1358 0 11.1265C0.145311 11.1265 0.287926 11.1298 0.427888 11.1364C2.61905 11.0923 6.48387 9.6504 7.28571 3.96985C7.42857 6.35539 9.08571 11.1265 14.5714 11.1265C12.1429 11.1988 7.28571 12.7747 7.28571 18.5C7.18137 16.1062 5.65424 11.3812 0.427888 11.1364Z"
                        fill="white"></path>
                  <path d="M11.042 4.57057C10.9642 4.5721 10.8906 4.57028 10.8218 4.56556C10.8966 4.56556 10.97 4.56725 11.042 4.57057C12.1698 4.54828 14.1591 3.81857 14.5718 0.943848C14.6453 2.15108 15.4982 4.56556 18.3218 4.56556C17.0718 4.60214 14.5718 5.39965 14.5718 8.29701C14.5181 7.08563 13.732 4.69447 11.042 4.57057Z"
                        fill="white"></path>
                </svg>
                <span class="text-[14px] font-bold text-white relative z-10">AI 추천</span>
              </a>
            </div>
          </div>
        </div>
      </form>
    </div>

  </header>

</body>
</html>
