.class Lcom/sec/android/app/shareapp/ShareApp$AppCheckChangeListener;
.super Ljava/lang/Object;
.source "ShareApp.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/shareapp/ShareApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppCheckChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/shareapp/ShareApp;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/shareapp/ShareApp;)V
    .registers 2
    .parameter

    .prologue
    .line 843
    iput-object p1, p0, Lcom/sec/android/app/shareapp/ShareApp$AppCheckChangeListener;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/shareapp/ShareApp;Lcom/sec/android/app/shareapp/ShareApp$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 843
    invoke-direct {p0, p1}, Lcom/sec/android/app/shareapp/ShareApp$AppCheckChangeListener;-><init>(Lcom/sec/android/app/shareapp/ShareApp;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 846
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp$AppCheckChangeListener;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/shareapp/ShareApp;->access$1700(Lcom/sec/android/app/shareapp/ShareApp;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_39

    .line 847
    iget-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp$AppCheckChangeListener;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/shareapp/ShareApp;->access$1700(Lcom/sec/android/app/shareapp/ShareApp;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/shareapp/ShareApp$AppViewHolder;

    iget-object v1, v1, Lcom/sec/android/app/shareapp/ShareApp$AppViewHolder;->appCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 848
    iget-object v1, p0, Lcom/sec/android/app/shareapp/ShareApp$AppCheckChangeListener;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->mAppInfoAdapter:Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;
    invoke-static {v1}, Lcom/sec/android/app/shareapp/ShareApp;->access$100(Lcom/sec/android/app/shareapp/ShareApp;)Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/shareapp/ShareApp$AppCheckChangeListener;->this$0:Lcom/sec/android/app/shareapp/ShareApp;

    #getter for: Lcom/sec/android/app/shareapp/ShareApp;->mList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/sec/android/app/shareapp/ShareApp;->access$1700(Lcom/sec/android/app/shareapp/ShareApp;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2, p2}, Lcom/sec/android/app/shareapp/ShareApp$AppInfoAdapter;->setAppCheck(IZ)V

    .line 852
    :cond_39
    return-void

    .line 846
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
