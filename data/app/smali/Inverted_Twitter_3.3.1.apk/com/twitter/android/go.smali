.class final Lcom/twitter/android/go;
.super Landroid/widget/Filter;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Lcom/twitter/android/gn;


# direct methods
.method constructor <init>(Lcom/twitter/android/gn;Landroid/app/Activity;Landroid/net/Uri;)V
    .registers 4

    iput-object p1, p0, Lcom/twitter/android/go;->c:Lcom/twitter/android/gn;

    iput-object p2, p0, Lcom/twitter/android/go;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/twitter/android/go;->b:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 9

    const/16 v4, 0x25

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v6, Landroid/widget/Filter$FilterResults;

    invoke-direct {v6}, Landroid/widget/Filter$FilterResults;-><init>()V

    if-eqz p1, :cond_91

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x40

    if-eq v2, v3, :cond_14

    move v1, v0

    :cond_14
    if-eqz v1, :cond_92

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2b
    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "username LIKE "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_74

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "% "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, " OR name LIKE "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OR name LIKE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_74
    iget-object v0, p0, Lcom/twitter/android/go;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/go;->b:Landroid/net/Uri;

    sget-object v2, Lcom/twitter/android/gp;->a:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "LOWER(name) ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, v6, Landroid/widget/Filter$FilterResults;->count:I

    iput-object v0, v6, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :cond_91
    return-object v6

    :cond_92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 5

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/twitter/android/go;->c:Lcom/twitter/android/gn;

    invoke-virtual {v0}, Lcom/twitter/android/gn;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/twitter/android/go;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->stopManagingCursor(Landroid/database/Cursor;)V

    :cond_11
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    iget-object v1, p0, Lcom/twitter/android/go;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    iget-object v1, p0, Lcom/twitter/android/go;->c:Lcom/twitter/android/gn;

    invoke-virtual {v1, v0}, Lcom/twitter/android/gn;->changeCursor(Landroid/database/Cursor;)V

    :cond_1f
    iget-object v0, p0, Lcom/twitter/android/go;->c:Lcom/twitter/android/gn;

    invoke-virtual {v0}, Lcom/twitter/android/gn;->notifyDataSetChanged()V

    return-void
.end method
