.class public final Lcom/google/android/youtube/core/model/t;
.super Lcom/google/android/youtube/core/model/s;
.source "SourceFile"


# instance fields
.field public final a:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 318
    invoke-direct/range {p0 .. p8}, Lcom/google/android/youtube/core/model/s;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 328
    iput-object p9, p0, Lcom/google/android/youtube/core/model/t;->a:Landroid/net/Uri;

    .line 329
    return-void
.end method
