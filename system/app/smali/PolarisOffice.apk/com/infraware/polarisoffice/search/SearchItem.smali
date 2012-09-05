.class public Lcom/infraware/polarisoffice/search/SearchItem;
.super Ljava/lang/Object;
.source "SearchItem.java"


# instance fields
.field m_nAccessDate:J

.field m_nInsertDate:J

.field m_nSearchIconId:I

.field m_nSearchId:I

.field m_strWord:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v0, p0, Lcom/infraware/polarisoffice/search/SearchItem;->m_nSearchId:I

    .line 13
    iput v0, p0, Lcom/infraware/polarisoffice/search/SearchItem;->m_nSearchIconId:I

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/polarisoffice/search/SearchItem;->m_strWord:Ljava/lang/String;

    .line 15
    iput-wide v1, p0, Lcom/infraware/polarisoffice/search/SearchItem;->m_nInsertDate:J

    .line 16
    iput-wide v1, p0, Lcom/infraware/polarisoffice/search/SearchItem;->m_nAccessDate:J

    .line 17
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;JJ)V
    .registers 8
    .parameter "searchId"
    .parameter "searchIconId"
    .parameter "word"
    .parameter "insertDate"
    .parameter "accessDate"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/infraware/polarisoffice/search/SearchItem;->m_nSearchId:I

    .line 22
    iput p2, p0, Lcom/infraware/polarisoffice/search/SearchItem;->m_nSearchIconId:I

    .line 23
    iput-object p3, p0, Lcom/infraware/polarisoffice/search/SearchItem;->m_strWord:Ljava/lang/String;

    .line 24
    iput-wide p4, p0, Lcom/infraware/polarisoffice/search/SearchItem;->m_nInsertDate:J

    .line 25
    iput-wide p6, p0, Lcom/infraware/polarisoffice/search/SearchItem;->m_nAccessDate:J

    .line 26
    return-void
.end method
