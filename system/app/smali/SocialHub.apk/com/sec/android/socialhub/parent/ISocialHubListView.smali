.class public interface abstract Lcom/sec/android/socialhub/parent/ISocialHubListView;
.super Ljava/lang/Object;
.source "ISocialHubListView.java"


# static fields
.field public static final STATUS_GATEWAY:Ljava/lang/Boolean;

.field public static final STATUS_LIST:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/parent/ISocialHubListView;->STATUS_LIST:Ljava/lang/Boolean;

    .line 24
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/parent/ISocialHubListView;->STATUS_GATEWAY:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public abstract onBackPressed()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onRefresh()V
.end method

.method public abstract onResume()V
.end method

.method public abstract requestRefresh()V
.end method

.method public abstract setQueryBuilder(Lcom/sec/android/socialhub/SocialHubQueryBuilder;)V
.end method

.method public abstract startQuery()V
.end method
