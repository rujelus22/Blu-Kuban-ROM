.class public final enum Lcom/dropbox/android/util/ao;
.super Ljava/lang/Enum;
.source "panda.py"


# static fields
.field public static final enum a:Lcom/dropbox/android/util/ao;

.field public static final enum b:Lcom/dropbox/android/util/ao;

.field private static final synthetic e:[Lcom/dropbox/android/util/ao;


# instance fields
.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 12
    new-instance v0, Lcom/dropbox/android/util/ao;

    const-string v1, "TOS"

    const v2, 0x7f090006

    const v3, 0x7f09002b

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/dropbox/android/util/ao;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/dropbox/android/util/ao;->a:Lcom/dropbox/android/util/ao;

    .line 13
    new-instance v0, Lcom/dropbox/android/util/ao;

    const-string v1, "PRIVACY"

    const v2, 0x7f090007

    const v3, 0x7f0900e7

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/dropbox/android/util/ao;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/dropbox/android/util/ao;->b:Lcom/dropbox/android/util/ao;

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dropbox/android/util/ao;

    sget-object v1, Lcom/dropbox/android/util/ao;->a:Lcom/dropbox/android/util/ao;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/android/util/ao;->b:Lcom/dropbox/android/util/ao;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dropbox/android/util/ao;->e:[Lcom/dropbox/android/util/ao;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/dropbox/android/util/ao;->d:I

    .line 20
    iput p4, p0, Lcom/dropbox/android/util/ao;->c:I

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/android/util/ao;
    .registers 2
    .parameter

    .prologue
    .line 11
    const-class v0, Lcom/dropbox/android/util/ao;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/util/ao;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/android/util/ao;
    .registers 1

    .prologue
    .line 11
    sget-object v0, Lcom/dropbox/android/util/ao;->e:[Lcom/dropbox/android/util/ao;

    invoke-virtual {v0}, [Lcom/dropbox/android/util/ao;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/android/util/ao;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;ZZ)Landroid/content/Intent;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/dropbox/android/activity/DropboxWebViewActivity;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    const-string v0, "TITLE"

    iget v2, p0, Lcom/dropbox/android/util/ao;->c:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    iget v0, p0, Lcom/dropbox/android/util/ao;->d:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {p1}, Lcom/dropbox/android/util/V;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 33
    if-eqz v2, :cond_35

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&oem_info="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    :cond_35
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 38
    if-eqz p2, :cond_44

    .line 39
    const-string v0, "BUTTONS"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 42
    :cond_44
    const-string v0, "EXTRA_REQUIRES_AUTH"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    return-object v1
.end method
