.class Lcom/infraware/polarisoffice/viewer/BookClipActivity$3;
.super Ljava/lang/Object;
.source "BookClipActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/viewer/BookClipActivity;
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


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/infraware/polarisoffice/common/MultiListItem;Lcom/infraware/polarisoffice/common/MultiListItem;)I
    .registers 5
    .parameter "map1"
    .parameter "map2"

    .prologue
    .line 256
    invoke-virtual {p1}, Lcom/infraware/polarisoffice/common/MultiListItem;->getText1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/infraware/polarisoffice/common/MultiListItem;->getText1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/Utils;->NaturalOrderComparator(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-virtual {p0, p1, p2}, Lcom/infraware/polarisoffice/viewer/BookClipActivity$3;->compare(Lcom/infraware/polarisoffice/common/MultiListItem;Lcom/infraware/polarisoffice/common/MultiListItem;)I

    move-result v0

    return v0
.end method
