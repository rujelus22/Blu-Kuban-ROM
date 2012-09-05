.class public final Las;
.super Lan;
.source "a"


# instance fields
.field private c:Lat;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    sget-object v0, Ldg;->o:Ldg;

    invoke-direct {p0, v0}, Lan;-><init>(Ldg;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Las;->c:Lat;

    .line 25
    return-void
.end method


# virtual methods
.method public final c()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 28
    invoke-static {}, Ld;->b()Landroid/content/Context;

    move-result-object v0

    .line 30
    invoke-virtual {p0}, Las;->a()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 32
    iget-object v1, p0, Las;->c:Lat;

    if-nez v1, :cond_21

    .line 33
    new-instance v1, Lat;

    invoke-direct {v1, v0}, Lat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Las;->c:Lat;

    .line 35
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Las;->c:Lat;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_21
    move v0, v3

    .line 46
    :goto_22
    return v0

    .line 42
    :cond_23
    iget-object v1, p0, Las;->c:Lat;

    if-eqz v1, :cond_33

    .line 43
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Las;->c:Lat;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Las;->c:Lat;

    .line 46
    :cond_33
    const/4 v0, 0x0

    goto :goto_22
.end method
