.class Lcom/sec/android/app/twlauncher/Launcher$13;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 7236
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$13;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 7238
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$13;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #calls: Lcom/sec/android/app/twlauncher/Launcher;->onBadgeChanged()V
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher;->access$6500(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 7239
    return-void
.end method
