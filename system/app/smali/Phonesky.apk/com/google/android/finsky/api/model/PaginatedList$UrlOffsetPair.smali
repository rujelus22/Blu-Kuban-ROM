.class public Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
.super Ljava/lang/Object;
.source "PaginatedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/api/model/PaginatedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "UrlOffsetPair"
.end annotation


# instance fields
.field public final offset:I

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .parameter "offset"
    .parameter "url"

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput p1, p0, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->offset:I

    .line 358
    iput-object p2, p0, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->url:Ljava/lang/String;

    .line 359
    return-void
.end method
