.class Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;
.super Ljava/lang/Object;
.source "MailboxListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MailboxDialogListItem"
.end annotation


# instance fields
.field private displayName:Ljava/lang/String;

.field private id:J

.field private isOpened:Z

.field private level:I

.field private mailboxType:I

.field private parentServerId:Ljava/lang/String;

.field private serverId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/MailboxListFragment;

.field private unreadCount:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MailboxListFragment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V
    .registers 11
    .parameter
    .parameter "displayName"
    .parameter "unreadCount"
    .parameter "mailboxType"
    .parameter "id"
    .parameter "parentId"
    .parameter "level"
    .parameter "columnId"

    .prologue
    .line 2886
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2872
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->serverId:Ljava/lang/String;

    .line 2874
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->parentServerId:Ljava/lang/String;

    .line 2887
    iput-object p2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->displayName:Ljava/lang/String;

    .line 2888
    iput-object p3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->unreadCount:Ljava/lang/String;

    .line 2889
    iput p4, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->mailboxType:I

    .line 2890
    iput-object p6, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->parentServerId:Ljava/lang/String;

    .line 2891
    iput-object p5, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->serverId:Ljava/lang/String;

    .line 2892
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->isOpened:Z

    .line 2893
    iput p7, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->level:I

    .line 2894
    iput-wide p8, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->id:J

    .line 2895
    return-void
.end method

.method static synthetic access$3400(Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2865
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->serverId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getId()J
    .registers 3

    .prologue
    .line 2930
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->id:J

    return-wide v0
.end method

.method public getLevel()I
    .registers 2

    .prologue
    .line 2926
    iget v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->level:I

    return v0
.end method

.method public getMailboxDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2898
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getMailboxType()I
    .registers 2

    .prologue
    .line 2906
    iget v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->mailboxType:I

    return v0
.end method

.method public getMailboxUnreadCount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2902
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->unreadCount:Ljava/lang/String;

    return-object v0
.end method

.method public getParentServerId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2914
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->parentServerId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2910
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public isOpened()Z
    .registers 2

    .prologue
    .line 2918
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->isOpened:Z

    return v0
.end method

.method public setIsOpened(Z)V
    .registers 2
    .parameter "isOpened"

    .prologue
    .line 2922
    iput-boolean p1, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->isOpened:Z

    .line 2923
    return-void
.end method
