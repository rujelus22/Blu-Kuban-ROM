.class Lcom/swype/android/service/SwypeConnect$4$1;
.super Ljava/lang/Object;
.source "SwypeConnect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/service/SwypeConnect$4;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/swype/android/service/SwypeConnect$4;


# direct methods
.method constructor <init>(Lcom/swype/android/service/SwypeConnect$4;)V
    .registers 2
    .parameter

    .prologue
    .line 637
    iput-object p1, p0, Lcom/swype/android/service/SwypeConnect$4$1;->this$1:Lcom/swype/android/service/SwypeConnect$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/swype/android/service/SwypeConnect$4$1;->this$1:Lcom/swype/android/service/SwypeConnect$4;

    iget-object v0, v0, Lcom/swype/android/service/SwypeConnect$4;->this$0:Lcom/swype/android/service/SwypeConnect;

    invoke-virtual {v0}, Lcom/swype/android/service/SwypeConnect;->bind()V

    .line 641
    return-void
.end method
