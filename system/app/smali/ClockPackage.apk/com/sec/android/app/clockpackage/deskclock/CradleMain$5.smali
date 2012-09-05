.class Lcom/sec/android/app/clockpackage/deskclock/CradleMain$5;
.super Ljava/lang/Object;
.source "CradleMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/deskclock/CradleMain;->ScreenOn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleMain;)V
    .registers 2
    .parameter

    .prologue
    .line 2082
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMain$5;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 2084
    invoke-static {}, Lcom/sec/android/app/clockpackage/deskclock/PowerController;->release()V

    .line 2086
    return-void
.end method
