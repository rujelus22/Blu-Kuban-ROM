.class public Lcom/google/googlenav/ui/view/android/bY;
.super Landroid/widget/CursorAdapter;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 30
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bY;->a:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/googlenav/ui/view/android/bY;
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/provider/LocalSuggestionProvider;->a:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, ""

    aput-object v5, v4, v3

    const-string v5, ""

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/google/googlenav/ui/view/android/bY;

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/ui/view/android/bY;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    return-object v1
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bY;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 56
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bY;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 65
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bY;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_f
    return-object v0

    :cond_10
    const-string v0, ""

    goto :goto_f
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 48
    const/4 v1, 0x1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const v0, 0x1020015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    const/4 v1, 0x2

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method

.method public c()Z
    .registers 4

    .prologue
    .line 71
    sget-object v0, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bY;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 3
    .parameter

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/bY;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 42
    const v1, 0x7f040179

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 84
    const-string v0, ""

    .line 85
    if-eqz p1, :cond_1f

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 91
    :goto_a
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bY;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/provider/LocalSuggestionProvider;->a:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_1f
    move-object v3, v0

    goto :goto_a
.end method
