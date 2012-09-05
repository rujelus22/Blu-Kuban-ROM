.class public Lcom/syncmldstmo/smlSyncResult;
.super Landroid/app/Activity;
.source "smlSyncResult.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# instance fields
.field private mCalendarResult:Landroid/app/ActionBar$Tab;

.field private mContactResult:Landroid/app/ActionBar$Tab;

.field private final szTabCalendar:Ljava/lang/String;

.field private final szTabContects:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 11
    const-string v0, "contacts"

    iput-object v0, p0, Lcom/syncmldstmo/smlSyncResult;->szTabContects:Ljava/lang/String;

    .line 12
    const-string v0, "calendar"

    iput-object v0, p0, Lcom/syncmldstmo/smlSyncResult;->szTabCalendar:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/syncmldstmo/smlSyncResult;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 23
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 24
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 26
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    iput-object v1, p0, Lcom/syncmldstmo/smlSyncResult;->mContactResult:Landroid/app/ActionBar$Tab;

    .line 27
    iget-object v1, p0, Lcom/syncmldstmo/smlSyncResult;->mContactResult:Landroid/app/ActionBar$Tab;

    invoke-static {}, Lcom/syncmldstmo/DSService;->smlGetContactString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 28
    iget-object v1, p0, Lcom/syncmldstmo/smlSyncResult;->mContactResult:Landroid/app/ActionBar$Tab;

    new-instance v2, Lcom/syncmldstmo/smlSyncResultTabListener;

    const-string v3, "contacts"

    const-class v4, Lcom/syncmldstmo/smlSyncResultContacts;

    invoke-direct {v2, p0, v3, v4}, Lcom/syncmldstmo/smlSyncResultTabListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 29
    iget-object v1, p0, Lcom/syncmldstmo/smlSyncResult;->mContactResult:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 31
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    iput-object v1, p0, Lcom/syncmldstmo/smlSyncResult;->mCalendarResult:Landroid/app/ActionBar$Tab;

    .line 32
    iget-object v1, p0, Lcom/syncmldstmo/smlSyncResult;->mCalendarResult:Landroid/app/ActionBar$Tab;

    invoke-static {}, Lcom/syncmldstmo/DSService;->smlGetCalendarString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 33
    iget-object v1, p0, Lcom/syncmldstmo/smlSyncResult;->mCalendarResult:Landroid/app/ActionBar$Tab;

    new-instance v2, Lcom/syncmldstmo/smlSyncResultTabListener;

    const-string v3, "calendar"

    const-class v4, Lcom/syncmldstmo/smlSyncResultCalendar;

    invoke-direct {v2, p0, v3, v4}, Lcom/syncmldstmo/smlSyncResultTabListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 34
    iget-object v1, p0, Lcom/syncmldstmo/smlSyncResult;->mCalendarResult:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 35
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "outState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 41
    return-void
.end method
