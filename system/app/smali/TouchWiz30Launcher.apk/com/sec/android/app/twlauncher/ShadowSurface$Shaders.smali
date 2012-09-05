.class Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders;
.super Ljava/lang/Object;
.source "ShadowSurface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/ShadowSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Shaders"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders$Blur2;,
        Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders$Blur1;
    }
.end annotation


# instance fields
.field mBlur1:Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders$Blur1;

.field mBlur2:Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders$Blur2;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders$Blur1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders$Blur1;-><init>(Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders;->mBlur1:Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders$Blur1;

    .line 61
    new-instance v0, Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders$Blur2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders$Blur2;-><init>(Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders;->mBlur2:Lcom/sec/android/app/twlauncher/ShadowSurface$Shaders$Blur2;

    .line 85
    return-void
.end method
