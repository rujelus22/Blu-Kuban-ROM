.class public abstract Lcom/dropbox/android/activity/BrowserWithHistoryStack;
.super Lcom/dropbox/android/activity/SimpleDropboxBrowser;
.source "panda.py"


# static fields
.field private static final m:Ljava/lang/String;


# instance fields
.field private y:Lcom/dropbox/android/util/am;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lcom/dropbox/android/activity/Browser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;-><init>()V

    .line 306
    return-void
.end method

.method private E()Z
    .registers 5

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->D()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/d/a;

    .line 185
    invoke-virtual {v0}, Ldbxyzptlk/d/a;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_35

    .line 186
    invoke-virtual {p0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 187
    const-string v1, "EXTRA_FILE_SCROLL_TO"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 188
    const-string v1, "EXTRA_FILE_SCROLL_TO"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 189
    instance-of v3, v1, Landroid/net/Uri;

    if-eqz v3, :cond_35

    .line 190
    check-cast v1, Landroid/net/Uri;

    .line 191
    invoke-virtual {v0}, Ldbxyzptlk/d/a;->a()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->a(Landroid/net/Uri;Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 192
    const-string v0, "EXTRA_FILE_SCROLL_TO"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x1

    .line 199
    :goto_34
    return v0

    :cond_35
    const/4 v0, 0x0

    goto :goto_34
.end method

.method private F()V
    .registers 4

    .prologue
    .line 220
    iget-object v0, p0, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->y:Lcom/dropbox/android/util/am;

    invoke-virtual {v0}, Lcom/dropbox/android/util/am;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 221
    sget-object v0, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->m:Ljava/lang/String;

    const-string v1, "Tried to browseParent with an empty history stack."

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :goto_f
    return-void

    .line 225
    :cond_10
    new-instance v0, Lcom/dropbox/android/util/Z;

    invoke-virtual {p0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->i()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/Z;-><init>(Landroid/net/Uri;)V

    .line 227
    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->a()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 228
    sget-object v0, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->m:Ljava/lang/String;

    const-string v1, "Tried to browse parent from root."

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 232
    :cond_27
    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->e()Lcom/dropbox/android/util/Z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/android/util/Z;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/android/util/r;->c()V

    .line 234
    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->e()Lcom/dropbox/android/util/Z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->b()Landroid/net/Uri;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->y:Lcom/dropbox/android/util/am;

    invoke-virtual {v1}, Lcom/dropbox/android/util/am;->d()I

    move-result v1

    .line 237
    const/4 v2, 0x2

    if-lt v1, v2, :cond_60

    iget-object v2, p0, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->y:Lcom/dropbox/android/util/am;

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v2, v1}, Lcom/dropbox/android/util/am;->a(I)Lcom/dropbox/android/util/al;

    move-result-object v1

    iget-object v1, v1, Lcom/dropbox/android/util/al;->a:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 238
    iget-object v0, p0, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->y:Lcom/dropbox/android/util/am;

    invoke-virtual {v0}, Lcom/dropbox/android/util/am;->c()Lcom/dropbox/android/util/al;

    .line 244
    :goto_5c
    invoke-virtual {p0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->o()V

    goto :goto_f

    .line 240
    :cond_60
    iget-object v1, p0, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->y:Lcom/dropbox/android/util/am;

    invoke-virtual {p0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->C()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dropbox/android/util/am;->a(Landroid/widget/ListView;)V

    .line 241
    iget-object v1, p0, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->y:Lcom/dropbox/android/util/am;

    new-instance v2, Lcom/dropbox/android/activity/b;

    invoke-direct {v2, v0}, Lcom/dropbox/android/activity/b;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/dropbox/android/util/am;->a(Lcom/dropbox/android/util/al;)Lcom/dropbox/android/util/al;

    goto :goto_5c
.end method

.method private a(Landroid/net/Uri;Landroid/database/Cursor;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 266
    new-instance v1, Lcom/dropbox/android/util/Z;

    invoke-direct {v1, p1}, Lcom/dropbox/android/util/Z;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1}, Lcom/dropbox/android/util/Z;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move v1, v0

    .line 268
    :goto_f
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_44

    .line 269
    invoke-interface {p2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 270
    const-string v3, "path"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 271
    if-ltz v3, :cond_45

    .line 272
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 275
    invoke-virtual {p0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->C()Landroid/widget/ListView;

    move-result-object v3

    .line 277
    invoke-virtual {p0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->D()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/V;

    invoke-virtual {v0, v2}, Lcom/dropbox/android/widget/V;->a(Ljava/lang/String;)V

    .line 282
    new-instance v0, Lcom/dropbox/android/activity/a;

    invoke-direct {v0, p0, v3, v1}, Lcom/dropbox/android/activity/a;-><init>(Lcom/dropbox/android/activity/BrowserWithHistoryStack;Landroid/widget/ListView;I)V

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 289
    const/4 v0, 0x1

    .line 294
    :cond_44
    return v0

    .line 268
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method


# virtual methods
.method protected final a(Landroid/net/Uri;)V
    .registers 7
    .parameter

    .prologue
    .line 102
    const/4 v1, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 104
    instance-of v2, v0, Lcom/dropbox/android/activity/c;

    if-eqz v2, :cond_4f

    .line 105
    check-cast v0, Lcom/dropbox/android/activity/c;

    .line 108
    :goto_b
    if-eqz p1, :cond_46

    .line 111
    new-instance v1, Lcom/dropbox/android/util/am;

    invoke-direct {v1}, Lcom/dropbox/android/util/am;-><init>()V

    iput-object v1, p0, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->y:Lcom/dropbox/android/util/am;

    .line 112
    iget-object v1, p0, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->y:Lcom/dropbox/android/util/am;

    new-instance v2, Lcom/dropbox/android/activity/b;

    invoke-direct {v2, p1}, Lcom/dropbox/android/activity/b;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/dropbox/android/util/am;->a(Lcom/dropbox/android/util/al;)Lcom/dropbox/android/util/al;

    .line 117
    :cond_1e
    :goto_1e
    iget-object v1, p0, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->y:Lcom/dropbox/android/util/am;

    if-nez v1, :cond_3e

    .line 119
    new-instance v1, Lcom/dropbox/android/util/am;

    invoke-direct {v1}, Lcom/dropbox/android/util/am;-><init>()V

    iput-object v1, p0, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->y:Lcom/dropbox/android/util/am;

    .line 120
    iget-object v1, p0, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->y:Lcom/dropbox/android/util/am;

    new-instance v2, Lcom/dropbox/android/activity/b;

    new-instance v3, Lcom/dropbox/android/util/Z;

    const-string v4, "/"

    invoke-direct {v3, v4}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/dropbox/android/util/Z;->b()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/dropbox/android/activity/b;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/dropbox/android/util/am;->a(Lcom/dropbox/android/util/al;)Lcom/dropbox/android/util/al;

    .line 123
    :cond_3e
    if-eqz v0, :cond_45

    .line 124
    iget-object v1, p0, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->y:Lcom/dropbox/android/util/am;

    invoke-interface {v0, v1}, Lcom/dropbox/android/activity/c;->a(Lcom/dropbox/android/util/am;)V

    .line 126
    :cond_45
    return-void

    .line 113
    :cond_46
    if-eqz v0, :cond_1e

    .line 114
    invoke-interface {v0}, Lcom/dropbox/android/activity/c;->a()Lcom/dropbox/android/util/am;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->y:Lcom/dropbox/android/util/am;

    goto :goto_1e

    :cond_4f
    move-object v0, v1

    goto :goto_b
.end method

.method public final a(Ldbxyzptlk/a/d;Landroid/database/Cursor;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/16 v4, -0x3e7

    .line 146
    invoke-super {p0, p1, p2}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->a(Ldbxyzptlk/a/d;Landroid/database/Cursor;)V

    .line 148
    iget-object v0, p0, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->y:Lcom/dropbox/android/util/am;

    invoke-virtual {v0}, Lcom/dropbox/android/util/am;->b()Lcom/dropbox/android/util/al;

    move-result-object v0

    .line 158
    invoke-direct {p0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->E()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 159
    iput v4, v0, Lcom/dropbox/android/util/al;->b:I

    .line 162
    :cond_13
    iget v1, v0, Lcom/dropbox/android/util/al;->b:I

    if-ltz v1, :cond_25

    .line 164
    invoke-virtual {p0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->C()Landroid/widget/ListView;

    move-result-object v1

    iget v2, v0, Lcom/dropbox/android/util/al;->b:I

    iget v3, v0, Lcom/dropbox/android/util/al;->c:I

    invoke-static {v1, v2, v3}, Lcom/dropbox/android/util/aX;->a(Landroid/widget/ListView;II)V

    .line 170
    iput v4, v0, Lcom/dropbox/android/util/al;->b:I

    .line 177
    :cond_24
    :goto_24
    return-void

    .line 171
    :cond_25
    iget v1, v0, Lcom/dropbox/android/util/al;->b:I

    if-eq v1, v4, :cond_24

    .line 174
    invoke-virtual {p0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->C()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 175
    iput v4, v0, Lcom/dropbox/android/util/al;->b:I

    goto :goto_24
.end method

.method public final bridge synthetic a(Ldbxyzptlk/a/d;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 29
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->a(Ldbxyzptlk/a/d;Landroid/database/Cursor;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 204
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->a(Ljava/lang/String;)V

    .line 205
    invoke-static {p1}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 206
    iget-object v0, p0, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->y:Lcom/dropbox/android/util/am;

    invoke-virtual {p0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->C()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dropbox/android/util/am;->a(Landroid/widget/ListView;)V

    .line 208
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 212
    :cond_2e
    new-instance v0, Lcom/dropbox/android/util/Z;

    invoke-direct {v0, p1}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->b()Landroid/net/Uri;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->y:Lcom/dropbox/android/util/am;

    new-instance v2, Lcom/dropbox/android/activity/b;

    invoke-direct {v2, v0}, Lcom/dropbox/android/activity/b;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/dropbox/android/util/am;->a(Lcom/dropbox/android/util/al;)Lcom/dropbox/android/util/al;

    .line 216
    invoke-virtual {p0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->o()V

    .line 217
    return-void
.end method

.method public final b(Landroid/net/Uri;)V
    .registers 4
    .parameter

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_FILE_SCROLL_TO"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 181
    return-void
.end method

.method public final i()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->y:Lcom/dropbox/android/util/am;

    invoke-virtual {v0}, Lcom/dropbox/android/util/am;->b()Lcom/dropbox/android/util/al;

    move-result-object v0

    iget-object v0, v0, Lcom/dropbox/android/util/al;->a:Landroid/net/Uri;
    :try_end_8
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_8} :catch_9

    .line 75
    :goto_8
    return-object v0

    .line 74
    :catch_9
    move-exception v0

    .line 75
    sget-object v0, Lcom/dropbox/android/d;->b:Landroid/net/Uri;

    goto :goto_8
.end method

.method protected final j()Ljava/lang/String;
    .registers 3

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->m()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 82
    new-instance v0, Lcom/dropbox/android/util/Z;

    invoke-virtual {p0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->i()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/Z;-><init>(Landroid/net/Uri;)V

    .line 83
    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->a()Z

    move-result v1

    if-nez v1, :cond_22

    .line 84
    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->e()Lcom/dropbox/android/util/Z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->c(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 88
    :goto_21
    return-object v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method protected final k()V
    .registers 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->F()V

    .line 94
    return-void
.end method

.method protected l()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->i()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->c(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected m()Z
    .registers 2

    .prologue
    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public n()Ljava/lang/String;
    .registers 3

    .prologue
    .line 134
    new-instance v0, Lcom/dropbox/android/util/Z;

    invoke-virtual {p0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->i()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/Z;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final o()V
    .registers 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->C()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 140
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->setProgressBarIndeterminate(Z)V

    .line 141
    invoke-super {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->o()V

    .line 142
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->o:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {v0, p0, p1}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;Landroid/view/Menu;)V

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->w()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lcom/dropbox/android/activity/lock/LockReceiver;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 58
    invoke-virtual {p0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->o()V

    .line 60
    :cond_f
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->onNewIntent(Landroid/content/Intent;)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->setIntent(Landroid/content/Intent;)V

    .line 62
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 41
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ldbxyzptlk/j/m;->c()Ldbxyzptlk/p/x;

    move-result-object v0

    if-nez v0, :cond_35

    .line 43
    new-instance v0, Lcom/dropbox/android/util/am;

    invoke-direct {v0}, Lcom/dropbox/android/util/am;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->y:Lcom/dropbox/android/util/am;

    .line 44
    iget-object v0, p0, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->y:Lcom/dropbox/android/util/am;

    new-instance v1, Lcom/dropbox/android/activity/b;

    new-instance v2, Lcom/dropbox/android/util/Z;

    const-string v3, "/"

    invoke-direct {v2, v3}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/dropbox/android/util/Z;->b()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dropbox/android/activity/b;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/dropbox/android/util/am;->a(Lcom/dropbox/android/util/al;)Lcom/dropbox/android/util/al;

    .line 46
    invoke-virtual {p0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 47
    instance-of v1, v0, Lcom/dropbox/android/activity/c;

    if-eqz v1, :cond_35

    .line 48
    check-cast v0, Lcom/dropbox/android/activity/c;

    iget-object v1, p0, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->y:Lcom/dropbox/android/util/am;

    invoke-interface {v0, v1}, Lcom/dropbox/android/activity/c;->a(Lcom/dropbox/android/util/am;)V

    .line 52
    :cond_35
    invoke-super {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->onResume()V

    .line 53
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->y:Lcom/dropbox/android/util/am;

    invoke-virtual {p0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->C()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dropbox/android/util/am;->a(Landroid/widget/ListView;)V

    .line 67
    invoke-super {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->onStop()V

    .line 68
    return-void
.end method

.method public final p()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 249
    iget-object v1, p0, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->y:Lcom/dropbox/android/util/am;

    invoke-virtual {v1}, Lcom/dropbox/android/util/am;->d()I

    move-result v1

    if-gt v1, v0, :cond_b

    .line 250
    const/4 v0, 0x0

    .line 256
    :goto_a
    return v0

    .line 253
    :cond_b
    iget-object v1, p0, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->y:Lcom/dropbox/android/util/am;

    invoke-virtual {v1}, Lcom/dropbox/android/util/am;->c()Lcom/dropbox/android/util/al;

    .line 254
    invoke-virtual {p0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->o()V

    goto :goto_a
.end method
