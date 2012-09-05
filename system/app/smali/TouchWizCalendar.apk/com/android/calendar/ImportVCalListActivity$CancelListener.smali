.class Lcom/android/calendar/ImportVCalListActivity$CancelListener;
.super Ljava/lang/Object;
.source "ImportVCalListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ImportVCalListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/ImportVCalListActivity;


# direct methods
.method private constructor <init>(Lcom/android/calendar/ImportVCalListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/calendar/ImportVCalListActivity$CancelListener;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/ImportVCalListActivity;Lcom/android/calendar/ImportVCalListActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lcom/android/calendar/ImportVCalListActivity$CancelListener;-><init>(Lcom/android/calendar/ImportVCalListActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity$CancelListener;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/calendar/ImportVCalListActivity;->mEventIds:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/calendar/ImportVCalListActivity;->access$1602(Lcom/android/calendar/ImportVCalListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 305
    iget-object v0, p0, Lcom/android/calendar/ImportVCalListActivity$CancelListener;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/calendar/ImportVCalListActivity;->finish:Z
    invoke-static {v0, v1}, Lcom/android/calendar/ImportVCalListActivity;->access$1702(Lcom/android/calendar/ImportVCalListActivity;Z)Z

    .line 306
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 301
    return-void
.end method
