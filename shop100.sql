-- [SQL Project] 2019-2020������� ���ͳ� ���θ� 100�� �� ������ �м�

-- 1. 2019�⵵ ������� ���ͳ� ���θ� 100�� �� ������ �м�
-- 2019�⵵ �� ��� ? ��ü�� ����
select ���θ�����, ���θ���, ��ü��, dense_rank() over(order by ��ü�� desc) ����
from shop100
where �򰡳⵵ = 2019; -- ��ü�� ������ ���� ������ ����

select ���θ�����, ���θ���, ��ü��, dense_rank() over(order by ��ü�� asc) ����
from shop100
where �򰡳⵵ = 2019; -- ��ü�� ������ ���� ������ ����

-- 2019�⵵ �� ��� ? ���θ�����(12���� �о�)�� 1�� ��ü
select *
from (select ���θ�����, ���θ���, ��ü��, dense_rank() over(partition by ���θ����� order by ��ü�� desc) ����
        from shop100
        where �򰡳⵵ = 2019)
where ���� = 1
order by ��ü�� desc;

-- 2019�⵵ �� ��� ? ���θ����к� ��ü�� ������� ����
select ���θ�����, trunc(avg(��ü��), 2) ��ü�����, dense_rank() over(order by avg(��ü��) desc) ����
from shop100
where �򰡳⵵ = 2019
group by ���θ�����;

-- 2019�⵵ �� ��� ? �Һ��ں�ȣ�� ����
select ���θ���, �Һ��ں�ȣ��, dense_rank() over (order by �Һ��ں�ȣ�� desc) ����
from shop100
where �򰡳⵵ = 2019; -- �Һ��ں�ȣ�� ������ ���� ������ ����

select ���θ���, �Һ��ں�ȣ��, dense_rank() over (order by �Һ��ں�ȣ�� asc) ����
from shop100
where �򰡳⵵ = 2019; -- �Һ��ں�ȣ�� ������ ���� ������ ����

-- 2019�⵵ �� ��� ? �̿��ڸ����� ����
select ���θ���, �̿��ڸ�����, dense_rank() over (order by �̿��ڸ����� desc) ����
from shop100
where �򰡳⵵ = 2019;

select ���θ�����, trunc(avg(�̿��ڸ�����), 2) �̿��ڸ��������, dense_rank() over(order by avg(�̿��ڸ�����) desc) ����
from shop100
where �򰡳⵵ = 2019
group by ���θ�����;

-- 2019�⵵ �� ��� ? ���ع߻��� ����
select ���θ���, ���ع߻���, dense_rank() over(order by ���ع߻��� desc) ����
from shop100
where �򰡳⵵ = 2019;

select ���ع߻���, count(*) �ش���θ���
from shop100
where �򰡳⵵ = 2019
group by ���ع߻���;

-- 2. 2020�⵵ ������� ���ͳ� ���θ� 100�� �� ������ �м�
-- 2020�⵵ �� ��� ? ��ü�� ����
select ���θ�����, ���θ���, ��ü��, dense_rank() over(order by ��ü�� desc) ����
from shop100
where �򰡳⵵ = 2020; -- ��ü�� ������ ���� ������ ����

select ���θ�����, ���θ���, ��ü��, dense_rank() over(order by ��ü�� asc) ����
from shop100
where �򰡳⵵ = 2020; -- ��ü�� ������ ���� ������ ����

-- 2020�⵵ �� ��� ? ���θ�����(12���� �о�)�� 1�� ��ü
select *
from (select ���θ�����, ���θ���, ��ü��, dense_rank() over(partition by ���θ����� order by ��ü�� desc) ����
        from shop100
        where �򰡳⵵ = 2020)
where ���� = 1
order by ��ü�� desc;

-- 2020�⵵ �� ��� ? ���θ����к� ��ü�� ������� ����
select ���θ�����, trunc(avg(��ü��), 2) ��ü�����, dense_rank() over(order by avg(��ü��) desc) ����
from shop100
where �򰡳⵵ = 2020
group by ���θ�����;

-- 2020�⵵ �� ��� ? �Һ��ں�ȣ�� ����
select ���θ���, �Һ��ں�ȣ��, dense_rank() over (order by �Һ��ں�ȣ�� desc) ����
from shop100
where �򰡳⵵ = 2020; -- �Һ��ں�ȣ�� ������ ���� ������ ����

select ���θ���, �Һ��ں�ȣ��, dense_rank() over (order by �Һ��ں�ȣ�� asc) ����
from shop100
where �򰡳⵵ = 2020; -- �Һ��ں�ȣ�� ������ ���� ������ ����

-- 2020�⵵ �� ��� ? �̿��ڸ����� ����
select ���θ���, �̿��ڸ�����, dense_rank() over (order by �̿��ڸ����� desc) ����
from shop100
where �򰡳⵵ = 2020;

select ���θ�����, trunc(avg(�̿��ڸ�����), 2) �̿��ڸ��������, dense_rank() over(order by avg(�̿��ڸ�����) desc) ����
from shop100
where �򰡳⵵ = 2020
group by ���θ�����;

-- 2020�⵵ �� ��� ? ���ع߻��� ����
select ���θ���, ���ع߻���, dense_rank() over(order by ���ع߻��� desc) ����
from shop100
where �򰡳⵵ = 2020;

select ���ع߻���, count(*) �ش���θ���
from shop100
where �򰡳⵵ = 2020
group by ���ع߻���;

-- 3. ������� ���ͳ� ���θ� 100�� �� ������ - 2019�⵵�� 2020�⵵ ��
-- 2019�⵵�� 2020�⵵ ��� �� ������� ���� ���θ� ���
select case when ���θ��� like '��������%' then '�������Ƹ�'
            when ���θ��� like '������%' then 'W����'
            when ���θ��� like '�Ƹ��۽���%' then '�Ƹ��۽��ȸ�'
            when ���θ��� like '%���̸�Ʈ' then '���̸�Ʈ'
            when ���θ��� like 'Ȩ�÷���%' then 'Ȩ�÷���'
            when ���θ��� like '�Ե�����%' then '�Ե���'
            when ���θ��� like '���ڷ���%' then '���ڷ���'
            else ���θ��� end as ���θ���
from shop100
where �򰡳⵵ = 2019
intersect
select case when ���θ��� like 'CJ mall' then 'CJmall'
            when ���θ��� like '%���' then '���'
            when ���θ��� like '%�ƽ���%' then '�ƽ���'
            else ���θ��� end as ���θ���
from shop100
where �򰡳⵵ = 2020
order by ���θ���;

-- 2019�⵵�� 2020�⵵ ��� �򰡵� ���θ��� ��ü�� ��� �� ��������
select a.���θ���, a.���� as "2019����", b.���� as "2020����", 
       case when (a.���� - b.����) > 0 then '��� ' || '(��' ||(a.���� - b.����) || ')'
             when (a.���� - b.����) < 0 then '�϶� ' || '(��' || ABS(a.���� - b.����) || ')'
             else '���� (-)' end as ��������
from (select case when ���θ��� like '��������%' then '�������Ƹ�'
                when ���θ��� like '������%' then 'W����'
                when ���θ��� like '�Ƹ��۽���%' then '�Ƹ��۽��ȸ�'
                when ���θ��� like '%���̸�Ʈ' then '���̸�Ʈ'
                when ���θ��� like 'Ȩ�÷���%' then 'Ȩ�÷���'
                when ���θ��� like '�Ե�����%' then '�Ե���'
                when ���θ��� like '���ڷ���%' then '���ڷ���'
                else ���θ��� end as ���θ���, rank() over(order by ��ü�� desc) ����
    from shop100
    where �򰡳⵵ = 2019) a
    join (select case when ���θ��� like 'CJ mall' then 'CJmall'
                when ���θ��� like '%���' then '���'
                when ���θ��� like '%�ƽ���%' then '�ƽ���'
                else ���θ��� end as ���θ���, rank() over(order by ��ü�� desc) ����
    from shop100
    where �򰡳⵵ = 2020) b
    on a.���θ��� = b.���θ���
order by 2;

-- 2019�⵵ ��� 2020�⵵ ������ ���� ���� ����� ���θ�
select a.���θ���, a.���� as "2019����", b.���� as "2020����", 
       case when (a.���� - b.����) > 0 then '��� ' || '(��' ||(a.���� - b.����) || ')'
             when (a.���� - b.����) < 0 then '�϶� ' || '(��' || ABS(a.���� - b.����) || ')'
             else '���� (-)' end as ��������
from (select case when ���θ��� like '��������%' then '�������Ƹ�'
                when ���θ��� like '������%' then 'W����'
                when ���θ��� like '�Ƹ��۽���%' then '�Ƹ��۽��ȸ�'
                when ���θ��� like '%���̸�Ʈ' then '���̸�Ʈ'
                when ���θ��� like 'Ȩ�÷���%' then 'Ȩ�÷���'
                when ���θ��� like '�Ե�����%' then '�Ե���'
                when ���θ��� like '���ڷ���%' then '���ڷ���'
                else ���θ��� end as ���θ���, rank() over(order by ��ü�� desc) ����
    from shop100
    where �򰡳⵵ = 2019) a
    join (select case when ���θ��� like 'CJ mall' then 'CJmall'
                when ���θ��� like '%���' then '���'
                when ���θ��� like '%�ƽ���%' then '�ƽ���'
                else ���θ��� end as ���θ���, rank() over(order by ��ü�� desc) ����
    from shop100
    where �򰡳⵵ = 2020) b
    on a.���θ��� = b.���θ���
where (a.���� - b.����) > 0
order by (a.���� - b.����) desc;

-- 2019�⵵ ��� 2020�⵵ ������ ���� ���� �϶��� ���θ�
select a.���θ���, a.���� as "2019����", b.���� as "2020����", 
       case when (a.���� - b.����) > 0 then '��� ' || '(��' ||(a.���� - b.����) || ')'
             when (a.���� - b.����) < 0 then '�϶� ' || '(��' || ABS(a.���� - b.����) || ')'
             else '���� (-)' end as ��������
from (select case when ���θ��� like '��������%' then '�������Ƹ�'
                when ���θ��� like '������%' then 'W����'
                when ���θ��� like '�Ƹ��۽���%' then '�Ƹ��۽��ȸ�'
                when ���θ��� like '%���̸�Ʈ' then '���̸�Ʈ'
                when ���θ��� like 'Ȩ�÷���%' then 'Ȩ�÷���'
                when ���θ��� like '�Ե�����%' then '�Ե���'
                when ���θ��� like '���ڷ���%' then '���ڷ���'
                else ���θ��� end as ���θ���, rank() over(order by ��ü�� desc) ����
    from shop100
    where �򰡳⵵ = 2019) a
    join (select case when ���θ��� like 'CJ mall' then 'CJmall'
                when ���θ��� like '%���' then '���'
                when ���θ��� like '%�ƽ���%' then '�ƽ���'
                else ���θ��� end as ���θ���, rank() over(order by ��ü�� desc) ����
    from shop100
    where �򰡳⵵ = 2020) b
    on a.���θ��� = b.���θ���
where (a.���� - b.����) < 0
order by ABS(a.���� - b.����) desc;