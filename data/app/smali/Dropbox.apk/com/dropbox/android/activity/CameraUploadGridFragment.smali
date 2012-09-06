.class public Lcom/dropbox/android/activity/CameraUploadGridFragment;
.super Lcom/dropbox/android/activity/lock/SweetListFragment;
.source "panda.py"

# interfaces
.implements Landroid/support/v4/app/x;


# static fields
.field private static final V:Ljava/lang/String;


# instance fields
.field private W:Landroid/widget/TextView;

.field private X:Landroid/widget/ProgressBar;

.field private Y:Z

.field private Z:Z

.field private volatile af:Lcom/dropbox/android/activity/x;

.field private ag:Landroid/content/BroadcastReceiver;

.field private ah:Lcom/dropbox/android/activity/w;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const-class v0, Lcom/dropbox/android/activity/CameraUploadGridFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->V:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 53
    invoke-direct {p0}, Lcom/dropbox/android/activity/lock/SweetListFragment;-><init>()V

    .line 68
    iput-boolean v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->Y:Z

    .line 69
    iput-boolean v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->Z:Z

    .line 70
    sget-object v0, Lcom/dropbox/android/activity/x;->a:Lcom/dropbox/android/activity/x;

    iput-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->af:Lcom/dropbox/android/activity/x;

    .line 72
    new-instance v0, Lcom/dropbox/android/activity/t;

    invoke-direct {v0, p0}, Lcom/dropbox/android/activity/t;-><init>(Lcom/dropbox/android/activity/CameraUploadGridFragment;)V

    iput-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->ag:Landroid/content/BroadcastReceiver;

    .line 293
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/activity/CameraUploadGridFragment;Lcom/dropbox/android/activity/x;)Lcom/dropbox/android/activity/x;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->af:Lcom/dropbox/android/activity/x;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->V:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/android/activity/CameraUploadGridFragment;)V
    .registers 1
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->z()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/activity/CameraUploadGridFragment;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->Y:Z

    return p1
.end method

.method static synthetic b(Lcom/dropbox/android/activity/CameraUploadGridFragment;)V
    .registers 1
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->y()V

    return-void
.end method

.method private y()V
    .registers 5

    .prologue
    const v3, 0x7f090127

    .line 186
    iget-object v1, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->X:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->af:Lcom/dropbox/android/activity/x;

    sget-object v2, Lcom/dropbox/android/activity/x;->a:Lcom/dropbox/android/activity/x;

    if-ne v0, v2, :cond_1d

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 187
    sget-object v0, Lcom/dropbox/android/activity/v;->a:[I

    iget-object v1, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->af:Lcom/dropbox/android/activity/x;

    invoke-virtual {v1}, Lcom/dropbox/android/activity/x;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3e

    .line 201
    :goto_1c
    return-void

    .line 186
    :cond_1d
    const/16 v0, 0x8

    goto :goto_c

    .line 189
    :pswitch_20
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->W:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1c

    .line 192
    :pswitch_26
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->W:Landroid/widget/TextView;

    const v1, 0x7f090126

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1c

    .line 195
    :pswitch_2f
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->W:Landroid/widget/TextView;

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1c

    .line 198
    :pswitch_38
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->W:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1c

    .line 187
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_20
        :pswitch_26
        :pswitch_2f
        :pswitch_38
    .end packed-switch
.end method

.method private z()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 204
    iget-boolean v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->Y:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->Z:Z

    if-nez v0, :cond_1d

    .line 205
    iput-boolean v2, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->Y:Z

    .line 206
    sget-object v0, Lcom/dropbox/android/activity/x;->a:Lcom/dropbox/android/activity/x;

    iput-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->af:Lcom/dropbox/android/activity/x;

    .line 207
    new-instance v0, Lcom/dropbox/android/activity/y;

    invoke-virtual {p0}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dropbox/android/activity/y;-><init>(Lcom/dropbox/android/activity/CameraUploadGridFragment;Landroid/content/Context;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/activity/y;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 210
    :cond_1d
    invoke-direct {p0}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->y()V

    .line 211
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    const v0, 0x7f030008

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 143
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/SweetListView;

    iput-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->aa:Lcom/dropbox/android/widget/SweetListView;

    .line 144
    const v0, 0x7f0d0027

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->W:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f0d0026

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->X:Landroid/widget/ProgressBar;

    .line 146
    return-object v1
.end method

.method public final a(ILandroid/os/Bundle;)Ldbxyzptlk/a/d;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 259
    new-instance v0, Ldbxyzptlk/a/c;

    invoke-virtual {p0}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->ah:Lcom/dropbox/android/activity/w;

    invoke-interface {v2}, Lcom/dropbox/android/activity/w;->i()Landroid/net/Uri;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Ldbxyzptlk/a/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Landroid/app/Activity;)V
    .registers 6
    .parameter

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/SweetListFragment;->a(Landroid/app/Activity;)V

    .line 89
    :try_start_3
    move-object v0, p1

    check-cast v0, Lcom/dropbox/android/activity/w;

    move-object v1, v0

    iput-object v1, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->ah:Lcom/dropbox/android/activity/w;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_9} :catch_a

    .line 93
    return-void

    .line 90
    :catch_a
    move-exception v1

    .line 91
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement CameraUploadGridFragmentCallback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/SweetListFragment;->a(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0, p1}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->c(Landroid/os/Bundle;)V

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 110
    const-string v1, "DropboxEntry"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v1, Lcom/dropbox/android/widget/au;

    invoke-virtual {p0}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/dropbox/android/widget/au;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/Set;)V

    iput-object v1, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->ab:Lcom/dropbox/android/widget/aq;

    .line 117
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.dropbox.android.taskqueue.CameraUploadTask.ACTION_CAMERA_UPLOAD_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Ldbxyzptlk/a/g;->a(Landroid/content/Context;)Ldbxyzptlk/a/g;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->ag:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldbxyzptlk/a/g;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 119
    return-void
.end method

.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->ab:Lcom/dropbox/android/widget/aq;

    check-cast v0, Lcom/dropbox/android/widget/au;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/au;->b()Landroid/database/Cursor;

    move-result-object v0

    .line 216
    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 217
    invoke-static {v0}, Lcom/dropbox/android/provider/B;->a(Landroid/database/Cursor;)Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->ah:Lcom/dropbox/android/activity/w;

    invoke-interface {v1}, Lcom/dropbox/android/activity/w;->f()Lcom/dropbox/android/activity/delegate/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/android/util/b;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/content/Context;Landroid/app/Activity;Lcom/dropbox/android/filemanager/LocalEntry;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public final a(Ldbxyzptlk/a/d;)V
    .registers 4
    .parameter

    .prologue
    .line 290
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->ab:Lcom/dropbox/android/widget/aq;

    check-cast v0, Lcom/dropbox/android/widget/au;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/au;->a(Landroid/database/Cursor;)V

    .line 291
    return-void
.end method

.method public final a(Ldbxyzptlk/a/d;Landroid/database/Cursor;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 272
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->ab:Lcom/dropbox/android/widget/aq;

    check-cast v0, Lcom/dropbox/android/widget/au;

    invoke-virtual {v0, p2}, Lcom/dropbox/android/widget/au;->a(Landroid/database/Cursor;)V

    .line 276
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->ac:Lcom/dropbox/android/util/aG;

    if-eqz v0, :cond_1f

    .line 278
    iget-object v1, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->aa:Lcom/dropbox/android/widget/SweetListView;

    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->ac:Lcom/dropbox/android/util/aG;

    invoke-virtual {v0}, Lcom/dropbox/android/util/aG;->a()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/dropbox/android/widget/SweetListView;->setDelayedPositionFromTop(I)V

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->ac:Lcom/dropbox/android/util/aG;

    .line 282
    :cond_1f
    invoke-direct {p0}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->z()V

    .line 283
    return-void
.end method

.method public final bridge synthetic a(Ldbxyzptlk/a/d;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 53
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->a(Ldbxyzptlk/a/d;Landroid/database/Cursor;)V

    return-void
.end method

.method protected final c(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/SweetListFragment;->c(Landroid/os/Bundle;)V

    .line 158
    if-eqz p1, :cond_e

    .line 159
    const-string v0, "mRefreshFromServer"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->Y:Z

    .line 161
    :cond_e
    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/SweetListFragment;->d(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->m()Landroid/support/v4/app/w;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/w;->a(ILandroid/os/Bundle;Landroid/support/v4/app/x;)Ldbxyzptlk/a/d;

    .line 126
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->aa:Lcom/dropbox/android/widget/SweetListView;

    iget-object v1, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->ab:Lcom/dropbox/android/widget/aq;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/SweetListView;->setSweetAdapter(Lcom/dropbox/android/widget/aq;)V

    .line 127
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->aa:Lcom/dropbox/android/widget/SweetListView;

    iget-object v1, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->ad:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/SweetListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->aa:Lcom/dropbox/android/widget/SweetListView;

    iget-object v1, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->ae:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/SweetListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->aa:Lcom/dropbox/android/widget/SweetListView;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->a(Landroid/view/View;)V

    .line 130
    invoke-direct {p0}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->y()V

    .line 131
    return-void
.end method

.method public final e()V
    .registers 2

    .prologue
    .line 135
    invoke-super {p0}, Lcom/dropbox/android/activity/lock/SweetListFragment;->e()V

    .line 136
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->aa:Lcom/dropbox/android/widget/SweetListView;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->b(Landroid/view/View;)V

    .line 137
    return-void
.end method

.method public final e(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/SweetListFragment;->e(Landroid/os/Bundle;)V

    .line 152
    const-string v0, "mRefreshFromServer"

    iget-boolean v1, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->Y:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 153
    return-void
.end method

.method public final o()V
    .registers 2

    .prologue
    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->Z:Z

    .line 166
    invoke-direct {p0}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->z()V

    .line 167
    invoke-super {p0}, Lcom/dropbox/android/activity/lock/SweetListFragment;->o()V

    .line 168
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 225
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 226
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->ab:Lcom/dropbox/android/widget/aq;

    check-cast v0, Lcom/dropbox/android/widget/au;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/au;->b()Landroid/database/Cursor;

    move-result-object v0

    .line 227
    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 228
    invoke-static {v0}, Lcom/dropbox/android/provider/B;->a(Landroid/database/Cursor;)Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v0

    .line 237
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/dropbox/android/widget/quickactions/a;

    new-instance v3, Lcom/dropbox/android/widget/quickactions/ButtonViewInFolder;

    invoke-virtual {p0}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/dropbox/android/widget/quickactions/ButtonViewInFolder;-><init>(Lcom/dropbox/android/filemanager/LocalEntry;Landroid/app/Activity;)V

    aput-object v3, v2, v1

    .line 240
    array-length v3, v2

    move v0, v1

    :goto_24
    if-ge v0, v3, :cond_3b

    aget-object v1, v2, v0

    .line 241
    invoke-virtual {v1}, Lcom/dropbox/android/widget/quickactions/a;->b()I

    move-result v4

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v4

    new-instance v5, Lcom/dropbox/android/activity/u;

    invoke-direct {v5, p0, v1}, Lcom/dropbox/android/activity/u;-><init>(Lcom/dropbox/android/activity/CameraUploadGridFragment;Lcom/dropbox/android/widget/quickactions/a;)V

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 249
    :cond_3b
    return-void
.end method

.method public final p()V
    .registers 2

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->Z:Z

    .line 173
    invoke-super {p0}, Lcom/dropbox/android/activity/lock/SweetListFragment;->p()V

    .line 174
    return-void
.end method

.method public final q()V
    .registers 3

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ldbxyzptlk/a/g;->a(Landroid/content/Context;)Ldbxyzptlk/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->ag:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldbxyzptlk/a/g;->a(Landroid/content/BroadcastReceiver;)V

    .line 179
    invoke-super {p0}, Lcom/dropbox/android/activity/lock/SweetListFragment;->q()V

    .line 180
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->ab:Lcom/dropbox/android/widget/aq;

    if-eqz v0, :cond_1c

    .line 181
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->ab:Lcom/dropbox/android/widget/aq;

    check-cast v0, Lcom/dropbox/android/widget/au;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/au;->a(Landroid/database/Cursor;)V

    .line 183
    :cond_1c
    return-void
.end method

.method public final s()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-super {p0}, Lcom/dropbox/android/activity/lock/SweetListFragment;->s()V

    .line 98
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->ab:Lcom/dropbox/android/widget/aq;

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 99
    iget-object v0, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->ab:Lcom/dropbox/android/widget/aq;

    check-cast v0, Lcom/dropbox/android/widget/au;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/au;->a(Landroid/database/Cursor;)V

    .line 101
    :cond_19
    iput-object v1, p0, Lcom/dropbox/android/activity/CameraUploadGridFragment;->ah:Lcom/dropbox/android/activity/w;

    .line 102
    return-void
.end method
