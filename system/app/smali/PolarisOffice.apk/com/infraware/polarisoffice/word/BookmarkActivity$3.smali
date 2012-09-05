.class Lcom/infraware/polarisoffice/word/BookmarkActivity$3;
.super Ljava/lang/Object;
.source "BookmarkActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/word/BookmarkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/infraware/polarisoffice/common/MultiListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final collator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$3;->collator:Ljava/text/Collator;

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/infraware/polarisoffice/common/MultiListItem;Lcom/infraware/polarisoffice/common/MultiListItem;)I
    .registers 6
    .parameter "map1"
    .parameter "map2"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/BookmarkActivity$3;->collator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/infraware/polarisoffice/common/MultiListItem;->getText1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/infraware/polarisoffice/common/MultiListItem;->getText1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/infraware/polarisoffice/common/MultiListItem;

    check-cast p2, Lcom/infraware/polarisoffice/common/MultiListItem;

    invoke-virtual {p0, p1, p2}, Lcom/infraware/polarisoffice/word/BookmarkActivity$3;->compare(Lcom/infraware/polarisoffice/common/MultiListItem;Lcom/infraware/polarisoffice/common/MultiListItem;)I

    move-result v0

    return v0
.end method
