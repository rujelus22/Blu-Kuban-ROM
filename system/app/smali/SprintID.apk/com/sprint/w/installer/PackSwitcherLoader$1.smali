.class final Lcom/sprint/w/installer/PackSwitcherLoader$1;
.super Ljava/lang/Thread;
.source "PackSwitcherLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/PackSwitcherLoader;->setVirtualPackDetail(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sprint/w/installer/PackSwitcherLoader$1;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getOemPack()Lcom/sprint/w/installer/PackInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 128
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$1;->val$c:Landroid/content/Context;

    const-string v1, "OEM"

    invoke-static {v0, v1}, Lcom/sprint/w/installer/PackSwitcherLoader;->saveCurrentRingTones(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$1;->val$c:Landroid/content/Context;

    const-string v1, "OEM"

    invoke-static {v0, v1}, Lcom/sprint/w/installer/PackSwitcherLoader;->saveCurrentWallpaper(Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    sput-object v2, Lcom/sprint/w/installer/PackSwitcherLoader;->sOemDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 132
    :cond_17
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$1;->val$c:Landroid/content/Context;

    const-string v1, "HOME"

    invoke-static {v0, v1}, Lcom/sprint/w/installer/PackSwitcherLoader;->saveCurrentRingTones(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader$1;->val$c:Landroid/content/Context;

    const-string v1, "HOME"

    invoke-static {v0, v1}, Lcom/sprint/w/installer/PackSwitcherLoader;->saveCurrentWallpaper(Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    sput-object v2, Lcom/sprint/w/installer/PackSwitcherLoader;->sHomeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 135
    return-void
.end method
