.class public Lcom/sec/android/socialhub/messagelist/MessageEventHandler;
.super Ljava/lang/Object;
.source "MessageEventHandler.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field mChildClick:Landroid/widget/ExpandableListView$OnChildClickListener;

.field private mContext:Landroid/content/Context;

.field mContextMenu:Landroid/view/View$OnCreateContextMenuListener;

.field private mDeleteWrapper:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

.field mGroupClick:Landroid/widget/ExpandableListView$OnGroupClickListener;

.field private mManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

.field private mMessageAPI:Lcom/sec/android/socialhub/messagelist/IMessageAPI;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-string v0, "MessageEventHandler"

    sput-object v0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/IMessageAPI;Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;)V
    .registers 5
    .parameter "context"
    .parameter "api"
    .parameter "wrapper"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$1;-><init>(Lcom/sec/android/socialhub/messagelist/MessageEventHandler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->mGroupClick:Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 93
    new-instance v0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$2;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$2;-><init>(Lcom/sec/android/socialhub/messagelist/MessageEventHandler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->mChildClick:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 118
    new-instance v0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3;-><init>(Lcom/sec/android/socialhub/messagelist/MessageEventHandler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->mContextMenu:Landroid/view/View$OnCreateContextMenuListener;

    .line 39
    iput-object p1, p0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->mMessageAPI:Lcom/sec/android/socialhub/messagelist/IMessageAPI;

    .line 41
    iput-object p3, p0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->mDeleteWrapper:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    .line 42
    invoke-direct {p0}, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->initialize()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/messagelist/MessageEventHandler;)Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->mManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/socialhub/messagelist/MessageEventHandler;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/socialhub/messagelist/MessageEventHandler;)Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->mDeleteWrapper:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/socialhub/messagelist/MessageEventHandler;)Lcom/sec/android/socialhub/messagelist/IMessageAPI;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->mMessageAPI:Lcom/sec/android/socialhub/messagelist/IMessageAPI;

    return-object v0
.end method

.method private initialize()V
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->mManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    .line 48
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->mMessageAPI:Lcom/sec/android/socialhub/messagelist/IMessageAPI;

    .line 53
    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->mDeleteWrapper:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    .line 54
    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method
