.class Lcom/android/calendar/ImportVCalListActivity$2$2;
.super Ljava/lang/Object;
.source "ImportVCalListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/ImportVCalListActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/ImportVCalListActivity$2;


# direct methods
.method constructor <init>(Lcom/android/calendar/ImportVCalListActivity$2;)V
    .registers 2
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/calendar/ImportVCalListActivity$2$2;->this$1:Lcom/android/calendar/ImportVCalListActivity$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity$2$2;->this$1:Lcom/android/calendar/ImportVCalListActivity$2;

    iget-object v0, v0, Lcom/android/calendar/ImportVCalListActivity$2;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    const/4 v1, 0x1

    #calls: Lcom/android/calendar/ImportVCalListActivity;->updateState(I)V
    invoke-static {v0, v1}, Lcom/android/calendar/ImportVCalListActivity;->access$1300(Lcom/android/calendar/ImportVCalListActivity;I)V

    .line 228
    return-void
.end method
