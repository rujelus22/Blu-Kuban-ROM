.class public Lcom/sec/android/app/dialertab/calllog/GroupCount;
.super Ljava/lang/Object;
.source "GroupCount.java"


# instance fields
.field private groupCount:I

.field private groupIDs:[I

.field private headerID:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter "ID"

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->headerID:I

    .line 17
    return-void
.end method

.method constructor <init>(I[II)V
    .registers 4
    .parameter "ID"
    .parameter "IDs"
    .parameter "count"

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->headerID:I

    .line 10
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->groupIDs:[I

    .line 11
    iput p3, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->groupCount:I

    .line 13
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 33
    if-nez p1, :cond_4

    .line 39
    .end local p1
    :cond_3
    :goto_3
    return v0

    .line 36
    .restart local p1
    :cond_4
    check-cast p1, Lcom/sec/android/app/dialertab/calllog/GroupCount;

    .end local p1
    invoke-virtual {p1}, Lcom/sec/android/app/dialertab/calllog/GroupCount;->getHeaderID()I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->headerID:I

    if-ne v1, v2, :cond_3

    .line 37
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public getGroupCount()I
    .registers 2

    .prologue
    .line 28
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->groupCount:I

    return v0
.end method

.method public getGroupIDs()[I
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->groupIDs:[I

    return-object v0
.end method

.method public getHeaderID()I
    .registers 2

    .prologue
    .line 20
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->headerID:I

    return v0
.end method
