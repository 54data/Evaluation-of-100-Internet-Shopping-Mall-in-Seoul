-- [SQL Project] 2019-2020〈서울시 인터넷 쇼핑몰 100개 평가 정보〉 분석

-- 1. 2019년도 〈서울시 인터넷 쇼핑몰 100개 평가 정보〉 분석
-- 2019년도 평가 결과 - 전체평가 순위
select 쇼핑몰구분, 쇼핑몰명, 전체평가, dense_rank() over(order by 전체평가 desc) 순위
from shop100
where 평가년도 = 2019; -- 전체평가 점수가 높은 순으로 정렬

select 쇼핑몰구분, 쇼핑몰명, 전체평가, dense_rank() over(order by 전체평가 asc) 순위
from shop100
where 평가년도 = 2019; -- 전체평가 점수가 낮은 순으로 정렬

-- 2019년도 평가 결과 - 쇼핑몰구분(12개의 분야)별 1위 업체
select *
from (select 쇼핑몰구분, 쇼핑몰명, 전체평가, dense_rank() over(partition by 쇼핑몰구분 order by 전체평가 desc) 순위
        from shop100
        where 평가년도 = 2019)
where 순위 = 1
order by 전체평가 desc;

-- 2019년도 평가 결과 - 쇼핑몰구분별 전체평가 평균점수 순위
select 쇼핑몰구분, trunc(avg(전체평가), 2) 전체평가평균, dense_rank() over(order by avg(전체평가) desc) 순위
from shop100
where 평가년도 = 2019
group by 쇼핑몰구분;

-- 2019년도 평가 결과 - 소비자보호평가 순위
select 쇼핑몰명, 소비자보호평가, dense_rank() over (order by 소비자보호평가 desc) 순위
from shop100
where 평가년도 = 2019; -- 소비자보호평가 점수가 높은 순으로 정렬

select 쇼핑몰명, 소비자보호평가, dense_rank() over (order by 소비자보호평가 asc) 순위
from shop100
where 평가년도 = 2019; -- 소비자보호평가 점수가 낮은 순으로 정렬

-- 2019년도 평가 결과 - 이용자만족평가 순위
select 쇼핑몰명, 이용자만족평가, dense_rank() over (order by 이용자만족평가 desc) 순위
from shop100
where 평가년도 = 2019;

select 쇼핑몰구분, trunc(avg(이용자만족평가), 2) 이용자만족평가평균, dense_rank() over(order by avg(이용자만족평가) desc) 순위
from shop100
where 평가년도 = 2019
group by 쇼핑몰구분;

-- 2019년도 평가 결과 - 피해발생평가 순위
select 쇼핑몰명, 피해발생평가, dense_rank() over(order by 피해발생평가 desc) 순위
from shop100
where 평가년도 = 2019;

select 피해발생평가, count(*) 해당쇼핑몰수
from shop100
where 평가년도 = 2019
group by 피해발생평가;

-- 2. 2020년도 〈서울시 인터넷 쇼핑몰 100개 평가 정보〉 분석
-- 2020년도 평가 결과 - 전체평가 순위
select 쇼핑몰구분, 쇼핑몰명, 전체평가, dense_rank() over(order by 전체평가 desc) 순위
from shop100
where 평가년도 = 2020; -- 전체평가 점수가 높은 순으로 정렬

select 쇼핑몰구분, 쇼핑몰명, 전체평가, dense_rank() over(order by 전체평가 asc) 순위
from shop100
where 평가년도 = 2020; -- 전체평가 점수가 낮은 순으로 정렬

-- 2020년도 평가 결과 - 쇼핑몰구분(12개의 분야)별 1위 업체
select *
from (select 쇼핑몰구분, 쇼핑몰명, 전체평가, dense_rank() over(partition by 쇼핑몰구분 order by 전체평가 desc) 순위
        from shop100
        where 평가년도 = 2020)
where 순위 = 1
order by 전체평가 desc;

-- 2020년도 평가 결과 - 쇼핑몰구분별 전체평가 평균점수 순위
select 쇼핑몰구분, trunc(avg(전체평가), 2) 전체평가평균, dense_rank() over(order by avg(전체평가) desc) 순위
from shop100
where 평가년도 = 2020
group by 쇼핑몰구분;

-- 2020년도 평가 결과 - 소비자보호평가 순위
select 쇼핑몰명, 소비자보호평가, dense_rank() over (order by 소비자보호평가 desc) 순위
from shop100
where 평가년도 = 2020; -- 소비자보호평가 점수가 높은 순으로 정렬

select 쇼핑몰명, 소비자보호평가, dense_rank() over (order by 소비자보호평가 asc) 순위
from shop100
where 평가년도 = 2020; -- 소비자보호평가 점수가 낮은 순으로 정렬

-- 2020년도 평가 결과 - 이용자만족평가 순위
select 쇼핑몰명, 이용자만족평가, dense_rank() over (order by 이용자만족평가 desc) 순위
from shop100
where 평가년도 = 2020;

select 쇼핑몰구분, trunc(avg(이용자만족평가), 2) 이용자만족평가평균, dense_rank() over(order by avg(이용자만족평가) desc) 순위
from shop100
where 평가년도 = 2020
group by 쇼핑몰구분;

-- 2020년도 평가 결과 - 피해발생평가 순위
select 쇼핑몰명, 피해발생평가, dense_rank() over(order by 피해발생평가 desc) 순위
from shop100
where 평가년도 = 2020;

select 피해발생평가, count(*) 해당쇼핑몰수
from shop100
where 평가년도 = 2020
group by 피해발생평가;

-- 3. 〈서울시 인터넷 쇼핑몰 100개 평가 정보〉 - 2019년도와 2020년도 비교
-- 2019년도와 2020년도 모두 평가 대상으로 뽑힌 쇼핑몰 목록
select case when 쇼핑몰명 like '갤러리아%' then '갤러리아몰'
            when 쇼핑몰명 like '더블유%' then 'W쇼핑'
            when 쇼핑몰명 like '아모레퍼시픽%' then '아모레퍼시픽몰'
            when 쇼핑몰명 like '%하이마트' then '하이마트'
            when 쇼핑몰명 like '홈플러스%' then '홈플러스'
            when 쇼핑몰명 like '롯데닷컴%' then '롯데온'
            when 쇼핑몰명 like '전자랜드%' then '전자랜드'
            else 쇼핑몰명 end as 쇼핑몰명
from shop100
where 평가년도 = 2019
intersect
select case when 쇼핑몰명 like 'CJ mall' then 'CJmall'
            when 쇼핑몰명 like '%라걸' then '라걸'
            when 쇼핑몰명 like '%아싸컴%' then '아싸컴'
            else 쇼핑몰명 end as 쇼핑몰명
from shop100
where 평가년도 = 2020
order by 쇼핑몰명;

-- 2019년도와 2020년도 모두 평가된 쇼핑몰의 전체평가 등수 및 순위변동
select a.쇼핑몰명, a.순위 as "2019순위", b.순위 as "2020순위", 
       case when (a.순위 - b.순위) > 0 then '상승 ' || '(▲' ||(a.순위 - b.순위) || ')'
             when (a.순위 - b.순위) < 0 then '하락 ' || '(▼' || ABS(a.순위 - b.순위) || ')'
             else '유지 (-)' end as 순위변동
from (select case when 쇼핑몰명 like '갤러리아%' then '갤러리아몰'
                when 쇼핑몰명 like '더블유%' then 'W쇼핑'
                when 쇼핑몰명 like '아모레퍼시픽%' then '아모레퍼시픽몰'
                when 쇼핑몰명 like '%하이마트' then '하이마트'
                when 쇼핑몰명 like '홈플러스%' then '홈플러스'
                when 쇼핑몰명 like '롯데닷컴%' then '롯데온'
                when 쇼핑몰명 like '전자랜드%' then '전자랜드'
                else 쇼핑몰명 end as 쇼핑몰명, rank() over(order by 전체평가 desc) 순위
    from shop100
    where 평가년도 = 2019) a
    join (select case when 쇼핑몰명 like 'CJ mall' then 'CJmall'
                when 쇼핑몰명 like '%라걸' then '라걸'
                when 쇼핑몰명 like '%아싸컴%' then '아싸컴'
                else 쇼핑몰명 end as 쇼핑몰명, rank() over(order by 전체평가 desc) 순위
    from shop100
    where 평가년도 = 2020) b
    on a.쇼핑몰명 = b.쇼핑몰명
order by 2;

-- 2019년도 대비 2020년도 순위가 가장 많이 상승한 쇼핑몰
select a.쇼핑몰명, a.순위 as "2019순위", b.순위 as "2020순위", 
       case when (a.순위 - b.순위) > 0 then '상승 ' || '(▲' ||(a.순위 - b.순위) || ')'
             when (a.순위 - b.순위) < 0 then '하락 ' || '(▼' || ABS(a.순위 - b.순위) || ')'
             else '유지 (-)' end as 순위변동
from (select case when 쇼핑몰명 like '갤러리아%' then '갤러리아몰'
                when 쇼핑몰명 like '더블유%' then 'W쇼핑'
                when 쇼핑몰명 like '아모레퍼시픽%' then '아모레퍼시픽몰'
                when 쇼핑몰명 like '%하이마트' then '하이마트'
                when 쇼핑몰명 like '홈플러스%' then '홈플러스'
                when 쇼핑몰명 like '롯데닷컴%' then '롯데온'
                when 쇼핑몰명 like '전자랜드%' then '전자랜드'
                else 쇼핑몰명 end as 쇼핑몰명, rank() over(order by 전체평가 desc) 순위
    from shop100
    where 평가년도 = 2019) a
    join (select case when 쇼핑몰명 like 'CJ mall' then 'CJmall'
                when 쇼핑몰명 like '%라걸' then '라걸'
                when 쇼핑몰명 like '%아싸컴%' then '아싸컴'
                else 쇼핑몰명 end as 쇼핑몰명, rank() over(order by 전체평가 desc) 순위
    from shop100
    where 평가년도 = 2020) b
    on a.쇼핑몰명 = b.쇼핑몰명
where (a.순위 - b.순위) > 0
order by (a.순위 - b.순위) desc;

-- 2019년도 대비 2020년도 순위가 가장 많이 하락한 쇼핑몰
select a.쇼핑몰명, a.순위 as "2019순위", b.순위 as "2020순위", 
       case when (a.순위 - b.순위) > 0 then '상승 ' || '(▲' ||(a.순위 - b.순위) || ')'
             when (a.순위 - b.순위) < 0 then '하락 ' || '(▼' || ABS(a.순위 - b.순위) || ')'
             else '유지 (-)' end as 순위변동
from (select case when 쇼핑몰명 like '갤러리아%' then '갤러리아몰'
                when 쇼핑몰명 like '더블유%' then 'W쇼핑'
                when 쇼핑몰명 like '아모레퍼시픽%' then '아모레퍼시픽몰'
                when 쇼핑몰명 like '%하이마트' then '하이마트'
                when 쇼핑몰명 like '홈플러스%' then '홈플러스'
                when 쇼핑몰명 like '롯데닷컴%' then '롯데온'
                when 쇼핑몰명 like '전자랜드%' then '전자랜드'
                else 쇼핑몰명 end as 쇼핑몰명, rank() over(order by 전체평가 desc) 순위
    from shop100
    where 평가년도 = 2019) a
    join (select case when 쇼핑몰명 like 'CJ mall' then 'CJmall'
                when 쇼핑몰명 like '%라걸' then '라걸'
                when 쇼핑몰명 like '%아싸컴%' then '아싸컴'
                else 쇼핑몰명 end as 쇼핑몰명, rank() over(order by 전체평가 desc) 순위
    from shop100
    where 평가년도 = 2020) b
    on a.쇼핑몰명 = b.쇼핑몰명
where (a.순위 - b.순위) < 0
order by ABS(a.순위 - b.순위) desc;