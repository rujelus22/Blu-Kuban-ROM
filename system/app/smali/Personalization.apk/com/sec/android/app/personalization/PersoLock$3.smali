.class Lcom/sec/android/app/personalization/PersoLock$3;
.super Ljava/lang/Object;
.source "PersoLock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/personalization/PersoLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/personalization/PersoLock;


# direct methods
.method constructor <init>(Lcom/sec/android/app/personalization/PersoLock;)V
    .registers 2
    .parameter

    .prologue
    .line 789
    iput-object p1, p0, Lcom/sec/android/app/personalization/PersoLock$3;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 791
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock$3;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    const-string v1, "network personalization skipped."

    #calls: Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/personalization/PersoLock;->access$000(Lcom/sec/android/app/personalization/PersoLock;Ljava/lang/String;)V

    .line 792
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock$3;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    invoke-virtual {v0}, Lcom/sec/android/app/personalization/PersoLock;->dismiss()V

    .line 793
    iget-object v0, p0, Lcom/sec/android/app/personalization/PersoLock$3;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    iget-object v0, v0, Lcom/sec/android/app/personalization/PersoLock;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 794
    return-void
.end method
