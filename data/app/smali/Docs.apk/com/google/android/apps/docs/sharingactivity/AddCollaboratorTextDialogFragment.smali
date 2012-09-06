.class public Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;
.super Lcom/google/android/apps/docs/app/BaseDialogFragment;
.source "AddCollaboratorTextDialogFragment.java"

# interfaces
.implements LPd;
.implements LQE;
.implements Landroid/text/TextWatcher;


# instance fields
.field public a:LFX;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LOT;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LPj;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LQm;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private final a:Landroid/os/Handler;

.field private a:Landroid/widget/Button;

.field private a:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

.field private a:Landroid/widget/MultiAutoCompleteTextView;

.field private a:Lcg;

.field private a:Lfd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfd",
            "<",
            "LQm;",
            ">;"
        }
    .end annotation
.end field

.field private a:[Ljava/lang/String;

.field public b:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseDialogFragment;-><init>()V

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;)Landroid/widget/MultiAutoCompleteTextView;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Landroid/widget/MultiAutoCompleteTextView;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;Lcg;)Lcg;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Lcg;

    return-object p1
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Lck;

    return-object v0
.end method

.method private a()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 253
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 254
    const/4 v0, 0x0

    :goto_10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_36

    .line 256
    iget-object v3, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v3, v1, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2d

    .line 258
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_2d
    iget-object v3, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v3, v1, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 261
    :cond_36
    return-object v2
.end method

.method public static synthetic a(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->b(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;)V
    .registers 1
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->q()V

    return-void
.end method

.method private a(Ljava/util/List;)Z
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 293
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 294
    :goto_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_42

    .line 295
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 299
    const-string v5, "<"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 300
    const-string v6, ">"

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 301
    if-eq v5, v7, :cond_2d

    if-eq v6, v7, :cond_2d

    if-le v6, v5, :cond_2d

    .line 302
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 305
    :cond_2d
    new-instance v5, Lalw;

    invoke-direct {v5, v0, v3}, Lalw;-><init>(Ljava/lang/String;Z)V

    .line 306
    invoke-virtual {v5}, Lalw;->a()Z

    move-result v5

    if-nez v5, :cond_3b

    .line 307
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_3b
    invoke-interface {p1, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 294
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 313
    :cond_42
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6f

    .line 314
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, LcW;->add_collaborators_invalid_contact_address:I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v7, v3, [Ljava/lang/Object;

    const-string v8, ", "

    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 321
    :cond_6f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_76

    move v2, v3

    :cond_76
    return v2
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;)[Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Lck;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sharingOptionsDialog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LPh;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "LPh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 479
    new-instance v1, Ljava/util/HashSet;

    array-length v0, p1

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 480
    array-length v2, p1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_12

    aget-object v3, p1, v0

    .line 481
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 480
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 483
    :cond_12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 484
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LPh;

    .line 485
    invoke-interface {v0}, LPh;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 486
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 489
    :cond_35
    return-object v2
.end method

.method public static synthetic c(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Lck;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "confirmSharingDialog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Lck;

    return-object v0
.end method

.method private p()V
    .registers 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_13

    const/4 v0, 0x1

    .line 243
    :goto_d
    iget-object v1, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 244
    return-void

    .line 242
    :cond_13
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private q()V
    .registers 7

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 272
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 281
    :cond_a
    :goto_a
    return-void

    .line 276
    :cond_b
    invoke-direct {p0, v3}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 277
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->a()Lx;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:LQm;

    invoke-interface {v4}, LQm;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:LQm;

    invoke-interface {v5}, LQm;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/docs/sharingactivity/ConfirmSharingDialogFragment;->a(Lx;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method private r()V
    .registers 4

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:LFX;

    const-string v1, "enableMultiTokenCollaboratorSuggestions"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, LFX;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 334
    if-eqz v0, :cond_f

    .line 335
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->s()V

    .line 339
    :goto_e
    return-void

    .line 337
    :cond_f
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->t()V

    goto :goto_e
.end method

.method private s()V
    .registers 3

    .prologue
    .line 345
    const-string v0, "AddCollaboratorTextDialogFragment"

    const-string v1, "in createAdapterAsync"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Lcg;

    if-eqz v0, :cond_c

    .line 404
    :goto_b
    return-void

    .line 350
    :cond_c
    new-instance v0, LOX;

    invoke-direct {v0, p0}, LOX;-><init>(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Lcg;

    .line 403
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Lcg;

    invoke-virtual {v0}, Lcg;->start()V

    goto :goto_b
.end method

.method private t()V
    .registers 3

    .prologue
    .line 410
    const-string v0, "AddCollaboratorTextDialogFragment"

    const-string v1, "in createAdapterAsync"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Lcg;

    if-eqz v0, :cond_c

    .line 454
    :goto_b
    return-void

    .line 415
    :cond_c
    new-instance v0, LOZ;

    invoke-direct {v0, p0}, LOZ;-><init>(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Lcg;

    .line 453
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Lcg;

    invoke-virtual {v0}, Lcg;->start()V

    goto :goto_b
.end method

.method private u()V
    .registers 3

    .prologue
    .line 457
    const-string v0, "AddCollaboratorTextDialogFragment"

    const-string v1, "in killCreateAdapterThread"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Lcg;

    .line 459
    if-eqz v0, :cond_11

    .line 460
    invoke-virtual {v0}, Lcg;->a()V

    .line 462
    :try_start_e
    invoke-virtual {v0}, Lcg;->join()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_11} :catch_12

    .line 467
    :cond_11
    :goto_11
    return-void

    .line 463
    :catch_12
    move-exception v0

    goto :goto_11
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 166
    const-string v0, "AddCollaboratorTextDialogFragment"

    const-string v1, "in onCreateView"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 169
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:LQm;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:LQm;

    invoke-interface {v0}, LQm;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:LQm;

    invoke-interface {v0}, LQm;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2e

    .line 172
    :cond_25
    const-string v0, "AddCollaboratorTextDialogFragment"

    const-string v1, "Early exit in onCreateView"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v0, 0x0

    .line 219
    :goto_2d
    return-object v0

    .line 176
    :cond_2e
    sget v0, LcU;->add_collaborator:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 178
    sget v0, LcS;->text_view:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Landroid/widget/MultiAutoCompleteTextView;

    .line 179
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/MultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 180
    new-instance v0, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;

    invoke-direct {v0}, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .line 181
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v2, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {v0, v2}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 183
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->r()V

    .line 185
    sget v0, LcS;->cancel:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->b:Landroid/widget/Button;

    .line 186
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->b:Landroid/widget/Button;

    new-instance v2, LOU;

    invoke-direct {v2, p0}, LOU;-><init>(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    sget v0, LcS;->add:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Landroid/widget/Button;

    .line 194
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Landroid/widget/Button;

    new-instance v2, LOV;

    invoke-direct {v2, p0}, LOV;-><init>(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v2, LOW;

    invoke-direct {v2, p0}, LOW;-><init>(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/MultiAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 214
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v2, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/widget/MultiAutoCompleteTextView;->setSelection(II)V

    .line 215
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 217
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a()Landroid/app/Dialog;

    move-result-object v0

    sget v2, LcY;->add_collaborators:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setTitle(I)V

    move-object v0, v1

    .line 219
    goto :goto_2d
.end method

.method public a(LPq;Ljava/util/List;)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LPq;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Lfd;

    invoke-virtual {v0}, Lfd;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQm;

    .line 496
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 497
    new-instance v3, Ldt;

    invoke-direct {v3}, Ldt;-><init>()V

    invoke-virtual {v3, v1}, Ldt;->b(Ljava/lang/String;)Ldt;

    move-result-object v1

    invoke-interface {v0}, LQm;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ldt;->a(Ljava/lang/String;)Ldt;

    move-result-object v1

    invoke-virtual {p1}, LPq;->a()Ldw;

    move-result-object v3

    invoke-virtual {v1, v3}, Ldt;->a(Ldw;)Ldt;

    move-result-object v1

    sget-object v3, Ldx;->a:Ldx;

    invoke-virtual {v1, v3}, Ldt;->a(Ldx;)Ldt;

    move-result-object v1

    invoke-virtual {v1}, Ldt;->a()Ldq;

    move-result-object v1

    .line 503
    invoke-interface {v0, v1}, LQm;->a(Ldq;)V

    goto :goto_c

    .line 506
    :cond_3f
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:LOT;

    invoke-interface {v0}, LOT;->e()V

    .line 508
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a()V

    .line 509
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 118
    const-string v0, "AddCollaboratorTextDialogFragment"

    const-string v1, "in onCreate"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseDialogFragment;->a(Landroid/os/Bundle;)V

    .line 121
    new-instance v0, Lfd;

    const-class v1, LQm;

    iget-object v2, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->b:LanD;

    invoke-direct {v0, v1, v2}, Lfd;-><init>(Ljava/lang/Class;LanD;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Lfd;

    .line 124
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->d(Z)V

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:LQm;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:LQm;

    invoke-interface {v0}, LQm;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:LQm;

    invoke-interface {v0}, LQm;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_57

    .line 129
    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a()V

    .line 131
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a()Lx;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/view/RoboDialogFragment;

    .line 133
    if-eqz v0, :cond_43

    .line 134
    invoke-virtual {v0}, Lcom/google/android/apps/docs/view/RoboDialogFragment;->a()V

    .line 137
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a()Lx;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/view/RoboDialogFragment;

    .line 139
    if-eqz v0, :cond_56

    .line 140
    invoke-virtual {v0}, Lcom/google/android/apps/docs/view/RoboDialogFragment;->a()V

    .line 153
    :cond_56
    :goto_56
    return-void

    .line 147
    :cond_57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:LQm;

    invoke-interface {v0}, LQm;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_66
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQC;

    .line 149
    invoke-virtual {v0}, LQC;->a()LQl;

    move-result-object v0

    invoke-virtual {v0}, LQl;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 152
    :cond_7e
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:[Ljava/lang/String;

    goto :goto_56
.end method

.method public a(Ljava/util/List;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a()Lx;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/docs/sharingactivity/SharingOptionsDialogFragment;->a(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;Lx;Ljava/lang/String;Z)V

    .line 328
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter

    .prologue
    .line 224
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 228
    return-void
.end method

.method public h()V
    .registers 3

    .prologue
    .line 513
    const-string v0, "AddCollaboratorTextDialogFragment"

    const-string v1, "in onDestroy"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 515
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->u()V

    .line 516
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseDialogFragment;->h()V

    .line 517
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 233
    invoke-direct {p0}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->p()V

    .line 234
    return-void
.end method
