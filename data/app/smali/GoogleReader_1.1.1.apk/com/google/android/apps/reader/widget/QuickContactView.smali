.class public Lcom/google/android/apps/reader/widget/QuickContactView;
.super Lcom/google/android/apps/reader/widget/ContactView;
.source "QuickContactView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/widget/QuickContactView$QueryHandler;
    }
.end annotation


# static fields
.field private static final EMAIL_ID_COLUMN_INDEX:I = 0x0

.field private static final EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field private static final EMAIL_LOOKUP_STRING_COLUMN_INDEX:I = 0x1


# instance fields
.field private mContactEmail:Ljava/lang/String;

.field private final mQueryHandler:Lcom/google/android/apps/reader/widget/QuickContactView$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "lookup"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/reader/widget/QuickContactView;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/widget/ContactView;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Lcom/google/android/apps/reader/widget/QuickContactView$QueryHandler;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/QuickContactView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/reader/widget/QuickContactView$QueryHandler;-><init>(Lcom/google/android/apps/reader/widget/QuickContactView;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/QuickContactView;->mQueryHandler:Lcom/google/android/apps/reader/widget/QuickContactView$QueryHandler;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/reader/widget/ContactView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Lcom/google/android/apps/reader/widget/QuickContactView$QueryHandler;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/QuickContactView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/reader/widget/QuickContactView$QueryHandler;-><init>(Lcom/google/android/apps/reader/widget/QuickContactView;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/QuickContactView;->mQueryHandler:Lcom/google/android/apps/reader/widget/QuickContactView$QueryHandler;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/reader/widget/ContactView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance v0, Lcom/google/android/apps/reader/widget/QuickContactView$QueryHandler;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/QuickContactView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/reader/widget/QuickContactView$QueryHandler;-><init>(Lcom/google/android/apps/reader/widget/QuickContactView;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/QuickContactView;->mQueryHandler:Lcom/google/android/apps/reader/widget/QuickContactView$QueryHandler;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/reader/widget/QuickContactView;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/widget/QuickContactView;->showOrCreateContact(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/reader/widget/QuickContactView;Landroid/net/Uri;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/widget/QuickContactView;->showQuickContact(Landroid/net/Uri;)V

    return-void
.end method

.method private showOrCreateContact(Ljava/lang/String;)V
    .registers 7
    .parameter "email"

    .prologue
    .line 89
    const-string v3, "mailto"

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 90
    .local v1, createUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 91
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/QuickContactView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 92
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 93
    return-void
.end method

.method private showQuickContact(Landroid/net/Uri;)V
    .registers 6
    .parameter "lookupUri"

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/QuickContactView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 82
    .local v0, context:Landroid/content/Context;
    move-object v3, p0

    .line 83
    .local v3, view:Landroid/view/View;
    const/4 v2, 0x2

    .line 84
    .local v2, mode:I
    const/4 v1, 0x0

    .line 85
    .local v1, excludeMimes:[Ljava/lang/String;
    invoke-static {v0, v3, p1, v2, v1}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 86
    return-void
.end method


# virtual methods
.method public assignContactFromEmail(Ljava/lang/String;)V
    .registers 2
    .parameter "emailAddress"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/apps/reader/widget/QuickContactView;->mContactEmail:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public performClick()Z
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/QuickContactView;->mContactEmail:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 70
    const/4 v1, 0x0

    .line 71
    .local v1, token:I
    iget-object v2, p0, Lcom/google/android/apps/reader/widget/QuickContactView;->mContactEmail:Ljava/lang/String;

    .line 72
    .local v2, cookie:Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/apps/reader/widget/QuickContactView;->mContactEmail:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 73
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/QuickContactView;->mQueryHandler:Lcom/google/android/apps/reader/widget/QuickContactView$QueryHandler;

    sget-object v4, Lcom/google/android/apps/reader/widget/QuickContactView;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/apps/reader/widget/QuickContactView$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x1

    .line 76
    .end local v1           #token:I
    .end local v2           #cookie:Ljava/lang/String;
    .end local v3           #uri:Landroid/net/Uri;
    :goto_1e
    return v0

    :cond_1f
    invoke-super {p0}, Lcom/google/android/apps/reader/widget/ContactView;->performClick()Z

    move-result v0

    goto :goto_1e
.end method
