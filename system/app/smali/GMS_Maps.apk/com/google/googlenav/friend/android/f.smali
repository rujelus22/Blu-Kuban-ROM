.class public abstract Lcom/google/googlenav/friend/android/f;
.super Landroid/database/CursorWrapper;
.source "SourceFile"


# instance fields
.field protected a:Landroid/database/Cursor;

.field final synthetic b:Lcom/google/googlenav/friend/android/e;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/friend/android/e;Landroid/database/Cursor;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/google/googlenav/friend/android/f;->b:Lcom/google/googlenav/friend/android/e;

    .line 243
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 244
    iput-object p2, p0, Lcom/google/googlenav/friend/android/f;->a:Landroid/database/Cursor;

    .line 245
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .registers 3
    .parameter

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/android/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .registers 3
    .parameter

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/android/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
