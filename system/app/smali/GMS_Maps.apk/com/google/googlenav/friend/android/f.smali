.class public abstract Lcom/google/googlenav/friend/android/f;
.super Landroid/database/CursorWrapper;


# instance fields
.field protected a:Landroid/database/Cursor;

.field final synthetic b:Lcom/google/googlenav/friend/android/e;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/friend/android/e;Landroid/database/Cursor;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/friend/android/f;->b:Lcom/google/googlenav/friend/android/e;

    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    iput-object p2, p0, Lcom/google/googlenav/friend/android/f;->a:Landroid/database/Cursor;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/android/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/android/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
