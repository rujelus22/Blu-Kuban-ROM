.class Lcom/google/android/feeds/AnnotatedCursor;
.super Landroid/database/CursorWrapper;
.source "AnnotatedCursor.java"


# instance fields
.field private final mExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroid/os/Bundle;)V
    .registers 5
    .parameter "cursor"
    .parameter "extras"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 41
    if-nez p1, :cond_d

    .line 42
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cursor is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_d
    if-nez p2, :cond_17

    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Extras are null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_17
    iput-object p2, p0, Lcom/google/android/feeds/AnnotatedCursor;->mExtras:Landroid/os/Bundle;

    .line 48
    return-void
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .registers 3

    .prologue
    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v0, extras:Landroid/os/Bundle;
    invoke-super {p0}, Landroid/database/CursorWrapper;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 54
    iget-object v1, p0, Lcom/google/android/feeds/AnnotatedCursor;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 55
    return-object v0
.end method
