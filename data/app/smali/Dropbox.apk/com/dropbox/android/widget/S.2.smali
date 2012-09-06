.class public final enum Lcom/dropbox/android/widget/S;
.super Ljava/lang/Enum;
.source "panda.py"


# static fields
.field public static final enum a:Lcom/dropbox/android/widget/S;

.field public static final enum b:Lcom/dropbox/android/widget/S;

.field public static final enum c:Lcom/dropbox/android/widget/S;

.field public static final enum d:Lcom/dropbox/android/widget/S;

.field public static final enum e:Lcom/dropbox/android/widget/S;

.field public static final enum f:Lcom/dropbox/android/widget/S;

.field public static final enum g:Lcom/dropbox/android/widget/S;

.field private static final synthetic i:[Lcom/dropbox/android/widget/S;


# instance fields
.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 151
    new-instance v0, Lcom/dropbox/android/widget/S;

    const-string v1, "DROPBOX_ENTRY"

    const-string v2, "DropboxEntry"

    invoke-direct {v0, v1, v4, v2}, Lcom/dropbox/android/widget/S;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/android/widget/S;->a:Lcom/dropbox/android/widget/S;

    .line 152
    new-instance v0, Lcom/dropbox/android/widget/S;

    const-string v1, "UP_FOLDER"

    const-string v2, "_up_folder"

    invoke-direct {v0, v1, v5, v2}, Lcom/dropbox/android/widget/S;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/android/widget/S;->b:Lcom/dropbox/android/widget/S;

    .line 153
    new-instance v0, Lcom/dropbox/android/widget/S;

    const-string v1, "SEPARATOR"

    const-string v2, "_separator"

    invoke-direct {v0, v1, v6, v2}, Lcom/dropbox/android/widget/S;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/android/widget/S;->c:Lcom/dropbox/android/widget/S;

    .line 154
    new-instance v0, Lcom/dropbox/android/widget/S;

    const-string v1, "IN_PROGRESS_UPLOAD"

    const-string v2, "_upload_in_progress"

    invoke-direct {v0, v1, v7, v2}, Lcom/dropbox/android/widget/S;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/android/widget/S;->d:Lcom/dropbox/android/widget/S;

    .line 155
    new-instance v0, Lcom/dropbox/android/widget/S;

    const-string v1, "CAMERA_UPLOAD_STATUS"

    const-string v2, "_camera_upload_status"

    invoke-direct {v0, v1, v8, v2}, Lcom/dropbox/android/widget/S;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/android/widget/S;->e:Lcom/dropbox/android/widget/S;

    .line 156
    new-instance v0, Lcom/dropbox/android/widget/S;

    const-string v1, "COMPLETED_UPLOAD"

    const/4 v2, 0x5

    const-string v3, "_upload_history_item"

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/android/widget/S;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/android/widget/S;->f:Lcom/dropbox/android/widget/S;

    .line 157
    new-instance v0, Lcom/dropbox/android/widget/S;

    const-string v1, "FAILED_UPLOAD"

    const/4 v2, 0x6

    const-string v3, "_upload_failure"

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/android/widget/S;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dropbox/android/widget/S;->g:Lcom/dropbox/android/widget/S;

    .line 150
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/dropbox/android/widget/S;

    sget-object v1, Lcom/dropbox/android/widget/S;->a:Lcom/dropbox/android/widget/S;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/android/widget/S;->b:Lcom/dropbox/android/widget/S;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/android/widget/S;->c:Lcom/dropbox/android/widget/S;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/android/widget/S;->d:Lcom/dropbox/android/widget/S;

    aput-object v1, v0, v7

    sget-object v1, Lcom/dropbox/android/widget/S;->e:Lcom/dropbox/android/widget/S;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/android/widget/S;->f:Lcom/dropbox/android/widget/S;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dropbox/android/widget/S;->g:Lcom/dropbox/android/widget/S;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/android/widget/S;->i:[Lcom/dropbox/android/widget/S;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 162
    iput-object p3, p0, Lcom/dropbox/android/widget/S;->h:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public static a(Landroid/database/Cursor;)Lcom/dropbox/android/widget/S;
    .registers 7
    .parameter

    .prologue
    .line 167
    const-string v0, "_cursor_type_tag"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 168
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 170
    sget-object v0, Lcom/dropbox/android/widget/S;->a:Lcom/dropbox/android/widget/S;

    .line 175
    :cond_b
    return-object v0

    .line 172
    :cond_c
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-static {}, Lcom/dropbox/android/widget/S;->values()[Lcom/dropbox/android/widget/S;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_17
    if-ge v1, v4, :cond_27

    aget-object v0, v3, v1

    .line 174
    iget-object v5, v0, Lcom/dropbox/android/widget/S;->h:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 173
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_17

    .line 178
    :cond_27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported type of tagged cursor entry for FileListCursorAdapter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/android/widget/S;
    .registers 2
    .parameter

    .prologue
    .line 150
    const-class v0, Lcom/dropbox/android/widget/S;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/S;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/android/widget/S;
    .registers 1

    .prologue
    .line 150
    sget-object v0, Lcom/dropbox/android/widget/S;->i:[Lcom/dropbox/android/widget/S;

    invoke-virtual {v0}, [Lcom/dropbox/android/widget/S;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/android/widget/S;

    return-object v0
.end method
