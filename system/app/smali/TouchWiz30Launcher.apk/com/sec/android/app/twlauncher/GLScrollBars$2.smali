.class Lcom/sec/android/app/twlauncher/GLScrollBars$2;
.super Lcom/sec/android/app/twlauncher/GLScrollBars$BaseFadingEdgeShader;
.source "GLScrollBars.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/GLScrollBars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/GLScrollBars;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/GLScrollBars;)V
    .registers 2
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLScrollBars$2;->this$0:Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLScrollBars$BaseFadingEdgeShader;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCoord()Ljava/lang/String;
    .registers 2

    .prologue
    .line 472
    const-string v0, "gl_FragCoord.y"

    return-object v0
.end method
