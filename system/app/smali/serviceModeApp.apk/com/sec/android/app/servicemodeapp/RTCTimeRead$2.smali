.class Lcom/sec/android/app/servicemodeapp/RTCTimeRead$2;
.super Ljava/lang/Object;
.source "RTCTimeRead.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/servicemodeapp/RTCTimeRead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/servicemodeapp/RTCTimeRead;


# direct methods
.method constructor <init>(Lcom/sec/android/app/servicemodeapp/RTCTimeRead;)V
    .registers 2
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/RTCTimeRead$2;->this$0:Lcom/sec/android/app/servicemodeapp/RTCTimeRead;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/RTCTimeRead$2;->this$0:Lcom/sec/android/app/servicemodeapp/RTCTimeRead;

    #getter for: Lcom/sec/android/app/servicemodeapp/RTCTimeRead;->mBackButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/RTCTimeRead;->access$100(Lcom/sec/android/app/servicemodeapp/RTCTimeRead;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_d

    .line 46
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/RTCTimeRead$2;->this$0:Lcom/sec/android/app/servicemodeapp/RTCTimeRead;

    invoke-virtual {v0}, Lcom/sec/android/app/servicemodeapp/RTCTimeRead;->finish()V

    .line 48
    :cond_d
    return-void
.end method
