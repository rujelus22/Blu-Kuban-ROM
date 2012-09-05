.class public Lcom/sprint/w/installer/env/BaseLauncherStrategy;
.super Ljava/lang/Object;
.source "BaseLauncherStrategy.java"

# interfaces
.implements Lcom/sprint/w/installer/env/LauncherStrategy;


# instance fields
.field cn:Landroid/content/ComponentName;

.field icon:I

.field screenCount:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sprint/w/installer/env/BaseLauncherStrategy;->cn:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getIconResource()I
    .registers 2

    .prologue
    .line 24
    iget v0, p0, Lcom/sprint/w/installer/env/BaseLauncherStrategy;->icon:I

    return v0
.end method

.method public getScreenCount()I
    .registers 2

    .prologue
    .line 14
    iget v0, p0, Lcom/sprint/w/installer/env/BaseLauncherStrategy;->screenCount:I

    return v0
.end method
