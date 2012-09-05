.class public Lcom/sec/android/socialhub/SocialHubQueryBuilder$FeedNormalQuery;
.super Lcom/sec/android/socialhub/SocialHubQueryBuilder$FeedBaseQuery;
.source "SocialHubQueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/SocialHubQueryBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeedNormalQuery"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 451
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/SocialHubQueryBuilder$FeedBaseQuery;-><init>(Landroid/content/Context;)V

    .line 452
    return-void
.end method
