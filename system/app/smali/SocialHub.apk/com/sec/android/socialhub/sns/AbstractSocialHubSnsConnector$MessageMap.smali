.class public Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;
.super Ljava/lang/Object;
.source "AbstractSocialHubSnsConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageMap"
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mExtra:Ljava/lang/Object;

.field public mReqType:I

.field public mSpType:I


# direct methods
.method public constructor <init>(IILandroid/content/Context;Ljava/lang/Object;)V
    .registers 5
    .parameter "type"
    .parameter "sp"
    .parameter "ctx"
    .parameter "obj"

    .prologue
    .line 2140
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2141
    iput p1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;->mReqType:I

    .line 2142
    iput p2, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;->mSpType:I

    .line 2143
    iput-object p3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;->mContext:Landroid/content/Context;

    .line 2144
    iput-object p4, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$MessageMap;->mExtra:Ljava/lang/Object;

    .line 2145
    return-void
.end method
