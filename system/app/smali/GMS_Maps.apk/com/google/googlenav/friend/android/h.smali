.class public Lcom/google/googlenav/friend/android/h;
.super Landroid/widget/ResourceCursorAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/ContentResolver;

.field private b:Lcom/google/googlenav/friend/android/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/friend/android/e;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 27
    const v0, 0x109000a

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/android/h;->a:Landroid/content/ContentResolver;

    .line 29
    iput-object p2, p0, Lcom/google/googlenav/friend/android/h;->b:Lcom/google/googlenav/friend/android/e;

    .line 30
    return-void
.end method

.method private final b(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    const/4 v0, 0x0

    .line 45
    const-string v2, "contacts_accessor_contact_display_name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 47
    const-string v3, "contacts_accessor_email_address"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const/4 v0, 0x1

    .line 55
    :cond_24
    if-eqz v0, :cond_2b

    .line 56
    const-string v2, " <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :cond_2b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    if-eqz v0, :cond_35

    .line 62
    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 34
    const-string v0, "contacts_accessor_contact_display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 36
    const-string v1, "contacts_accessor_email_address"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 39
    new-instance v2, Landroid/text/util/Rfc822Token;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, p3}, Lcom/google/googlenav/friend/android/h;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 75
    check-cast p1, Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    :cond_1a
    return-void
.end method

.method public synthetic convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 3
    .parameter

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/android/h;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 6
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/googlenav/friend/android/h;->b:Lcom/google/googlenav/friend/android/e;

    iget-object v1, p0, Lcom/google/googlenav/friend/android/h;->a:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/googlenav/friend/android/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;ZLjava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
