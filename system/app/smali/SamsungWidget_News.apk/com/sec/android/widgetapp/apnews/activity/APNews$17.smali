.class Lcom/sec/android/widgetapp/apnews/activity/APNews$17;
.super Ljava/lang/Object;
.source "APNews.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/apnews/activity/APNews;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V
    .registers 2
    .parameter

    .prologue
    .line 1312
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$17;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$17;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mApNewsState:I

    .line 1315
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews$17;->this$0:Lcom/sec/android/widgetapp/apnews/activity/APNews;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->removeDialog(I)V

    .line 1316
    return-void
.end method
