.class public Lcom/sec/android/socialhub/SocialHubQueryBuilder$NormalQuery;
.super Lcom/sec/android/socialhub/SocialHubQueryBuilder;
.source "SocialHubQueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/SocialHubQueryBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NormalQuery"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 460
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/SocialHubQueryBuilder;-><init>(Landroid/content/Context;)V

    .line 461
    return-void
.end method


# virtual methods
.method public getQuery(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "account"

    .prologue
    .line 466
    const/4 v0, 0x0

    return-object v0
.end method
