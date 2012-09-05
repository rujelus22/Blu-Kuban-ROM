.class Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail$BuddiesObserver;
.super Landroid/database/ContentObserver;
.source "BuddyDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BuddiesObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;


# direct methods
.method private constructor <init>(Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;)V
    .registers 3
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail$BuddiesObserver;->this$0:Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;

    .line 239
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 240
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail$BuddiesObserver;-><init>(Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .parameter "selfChange"

    .prologue
    .line 243
    const-string v0, "Buddies--------------------------->"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BuddiesObserver OnChange called!!!+ Contact Uri :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail$BuddiesObserver;->this$0:Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;

    #getter for: Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->access$100(Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "selfChange :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/widgetapp/buddiesnow/BuddiesWidgetService;->mIsContactsChanged:Z

    .line 247
    return-void
.end method
