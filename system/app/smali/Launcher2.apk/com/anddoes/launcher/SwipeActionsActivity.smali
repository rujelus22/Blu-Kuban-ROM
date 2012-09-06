.class public Lcom/anddoes/launcher/SwipeActionsActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private a:Lcom/anddoes/launcher/LauncherApplication;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/Spinner;

.field private h:Landroid/widget/Spinner;

.field private i:Lcom/anddoes/launcher/kj;

.field private j:Ljava/lang/String;

.field private k:Lcom/anddoes/launcher/preference/az;

.field private l:[Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->j:Ljava/lang/String;

    .line 61
    iput-boolean v1, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->C:Z

    .line 62
    iput-boolean v1, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->D:Z

    .line 64
    iput-boolean v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->E:Z

    .line 65
    iput-boolean v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->F:Z

    .line 22
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 148
    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->l:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_9

    move v0, v1

    .line 153
    :cond_8
    return v0

    .line 149
    :cond_9
    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->l:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private a()V
    .registers 8

    .prologue
    const/4 v6, 0x4

    const v5, 0x7f0600ed

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 262
    const-string v0, "LAUNCH_APP"

    iget-object v1, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 263
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 264
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->e:Landroid/widget/TextView;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->o:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v5, v1}, Lcom/anddoes/launcher/SwipeActionsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    :goto_2c
    const-string v0, "LAUNCH_APP"

    iget-object v1, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 275
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_80

    .line 276
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->f:Landroid/widget/TextView;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->w:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v5, v1}, Lcom/anddoes/launcher/SwipeActionsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    :goto_52
    return-void

    .line 266
    :cond_53
    const-string v0, "LAUNCH_SHORTCUT"

    iget-object v1, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 267
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 268
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->e:Landroid/widget/TextView;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->s:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v5, v1}, Lcom/anddoes/launcher/SwipeActionsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2c

    .line 271
    :cond_7a
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2c

    .line 278
    :cond_80
    const-string v0, "LAUNCH_SHORTCUT"

    iget-object v1, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 279
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a7

    .line 280
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->f:Landroid/widget/TextView;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->A:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p0, v5, v1}, Lcom/anddoes/launcher/SwipeActionsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_52

    .line 283
    :cond_a7
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_52
.end method

.method static synthetic a(Lcom/anddoes/launcher/SwipeActionsActivity;Landroid/widget/Spinner;I)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 209
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->g:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_9d

    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->l:[Ljava/lang/String;

    aget-object v0, v0, p2

    iput-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->m:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->E:Z

    if-nez v0, :cond_60

    const-string v0, "LAUNCH_APP"

    iget-object v1, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "swipe_up_app_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v1, v1, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->o:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "swipe_up_intent_"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v3, v3, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->p:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "swipe_up_component_"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v5, v5, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->n:Ljava/lang/String;

    iget-object v7, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->q:Ljava/lang/String;

    iget-object v8, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->r:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/anddoes/launcher/SwipeActionsActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    :goto_60
    iput-boolean v9, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->E:Z

    :cond_62
    :goto_62
    invoke-direct {p0}, Lcom/anddoes/launcher/SwipeActionsActivity;->a()V

    return-void

    :cond_66
    const-string v0, "LAUNCH_SHORTCUT"

    iget-object v1, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->m:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "swipe_up_shortcut_name_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v1, v1, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swipe_up_shortcut_intent_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v2, v2, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/SwipeActionsActivity;->b(Ljava/lang/String;)V

    goto :goto_60

    :cond_9d
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->h:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_62

    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->l:[Ljava/lang/String;

    aget-object v0, v0, p2

    iput-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->u:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->F:Z

    if-nez v0, :cond_fc

    const-string v0, "LAUNCH_APP"

    iget-object v1, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "swipe_down_app_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v1, v1, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->w:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "swipe_down_intent_"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v3, v3, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->x:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "swipe_down_component_"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v5, v5, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->v:Ljava/lang/String;

    iget-object v7, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->y:Ljava/lang/String;

    iget-object v8, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->z:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/anddoes/launcher/SwipeActionsActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_fc
    :goto_fc
    iput-boolean v9, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->F:Z

    goto/16 :goto_62

    :cond_100
    const-string v0, "LAUNCH_SHORTCUT"

    iget-object v1, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->u:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "swipe_down_shortcut_name_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v1, v1, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swipe_down_shortcut_intent_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v2, v2, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/SwipeActionsActivity;->b(Ljava/lang/String;)V

    goto :goto_fc
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 290
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/anddoes/launcher/AppPickerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 292
    sget-object v1, Lcom/anddoes/launcher/AppPickerActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    sget-object v1, Lcom/anddoes/launcher/AppPickerActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    sget-object v1, Lcom/anddoes/launcher/AppPickerActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    sget-object v1, Lcom/anddoes/launcher/AppPickerActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    sget-object v1, Lcom/anddoes/launcher/AppPickerActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    sget-object v1, Lcom/anddoes/launcher/AppPickerActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    sget-object v1, Lcom/anddoes/launcher/AppPickerActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    sget-object v1, Lcom/anddoes/launcher/AppPickerActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/SwipeActionsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 304
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->j:Ljava/lang/String;

    .line 244
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 246
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 247
    const v2, 0x7f06016a

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/SwipeActionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 250
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 251
    const v2, 0x7f02003b

    invoke-static {p0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 254
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    const-string v2, "android.intent.extra.INTENT"

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 256
    const-string v2, "android.intent.extra.TITLE"

    const v3, 0x7f060268

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/SwipeActionsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 257
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 258
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/anddoes/launcher/SwipeActionsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 259
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x5

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 308
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3b

    .line 309
    if-ne p1, v1, :cond_4b

    .line 311
    :try_start_9
    sget-object v0, Lcom/anddoes/launcher/AppPickerActivity;->a:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    sget-object v1, Lcom/anddoes/launcher/AppPickerActivity;->b:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 313
    sget-object v2, Lcom/anddoes/launcher/AppPickerActivity;->f:Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 314
    sget-object v3, Lcom/anddoes/launcher/AppPickerActivity;->h:Ljava/lang/String;

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 315
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 316
    const-string v4, "swipe_up_app_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->C:Z

    .line 318
    iput-object v3, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->n:Ljava/lang/String;

    .line 319
    iput-object v1, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->o:Ljava/lang/String;

    .line 320
    iput-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->p:Ljava/lang/String;

    .line 327
    :goto_38
    invoke-direct {p0}, Lcom/anddoes/launcher/SwipeActionsActivity;->a()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3b} :catch_49

    .line 360
    :cond_3b
    :goto_3b
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 361
    :goto_3e
    return-void

    .line 322
    :cond_3f
    const/4 v0, 0x1

    :try_start_40
    iput-boolean v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->D:Z

    .line 323
    iput-object v3, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->v:Ljava/lang/String;

    .line 324
    iput-object v1, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->w:Ljava/lang/String;

    .line 325
    iput-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->x:Ljava/lang/String;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_48} :catch_49

    goto :goto_38

    .line 329
    :catch_49
    move-exception v0

    goto :goto_3b

    .line 331
    :cond_4b
    const/4 v0, 0x4

    if-ne p1, v0, :cond_92

    .line 332
    invoke-virtual {p0}, Lcom/anddoes/launcher/SwipeActionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06016a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 333
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 334
    if-eqz v0, :cond_75

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 335
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 336
    const-class v1, Lcom/anddoes/launcher/ActPickerActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 337
    invoke-virtual {p0, v0, v3}, Lcom/anddoes/launcher/SwipeActionsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3e

    .line 339
    :cond_75
    const/4 v0, 0x5

    :try_start_76
    invoke-virtual {p0, p3, v0}, Lcom/anddoes/launcher/SwipeActionsActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_79
    .catch Landroid/content/ActivityNotFoundException; {:try_start_76 .. :try_end_79} :catch_7a
    .catch Ljava/lang/SecurityException; {:try_start_76 .. :try_end_79} :catch_86

    goto :goto_3e

    :catch_7a
    move-exception v0

    const v0, 0x7f060252

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3e

    :catch_86
    move-exception v0

    const v0, 0x7f06016c

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3e

    .line 342
    :cond_92
    if-eq p1, v3, :cond_96

    if-ne p1, v2, :cond_3b

    .line 343
    :cond_96
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 344
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 345
    if-eqz v0, :cond_cb

    if-eqz v1, :cond_cb

    .line 346
    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 347
    const-string v2, "android.intent.action.CALL"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    :cond_b9
    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->j:Ljava/lang/String;

    const-string v3, "swipe_up_shortcut_name_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 350
    iput-object v1, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->s:Ljava/lang/String;

    .line 351
    invoke-virtual {v0, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->t:Ljava/lang/String;

    .line 357
    :cond_cb
    :goto_cb
    invoke-direct {p0}, Lcom/anddoes/launcher/SwipeActionsActivity;->a()V

    goto/16 :goto_3b

    .line 353
    :cond_d0
    iput-object v1, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->A:Ljava/lang/String;

    .line 354
    invoke-virtual {v0, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->B:Ljava/lang/String;

    goto :goto_cb
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->c:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_174

    .line 165
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->b:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17c

    .line 168
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->k:Lcom/anddoes/launcher/preference/az;

    iget-object v1, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v1, v1, Lcom/anddoes/launcher/kj;->h:J

    iget-object v3, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->m:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "swipe_up_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/anddoes/launcher/preference/az;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v0, "LAUNCH_APP"

    iget-object v1, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17d

    iget-boolean v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->C:Z

    if-eqz v0, :cond_17d

    .line 170
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->k:Lcom/anddoes/launcher/preference/az;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swipe_up_component_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v2, v2, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->n:Ljava/lang/String;

    .line 170
    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/preference/az;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->k:Lcom/anddoes/launcher/preference/az;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swipe_up_app_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v2, v2, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->o:Ljava/lang/String;

    .line 172
    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/preference/az;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->k:Lcom/anddoes/launcher/preference/az;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swipe_up_intent_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v2, v2, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->p:Ljava/lang/String;

    .line 174
    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/preference/az;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c2

    .line 177
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->k:Lcom/anddoes/launcher/preference/az;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swipe_up_pkg_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v2, v2, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/preference/az;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->k:Lcom/anddoes/launcher/preference/az;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swipe_up_act_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v2, v2, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/preference/az;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_c2
    :goto_c2
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->k:Lcom/anddoes/launcher/preference/az;

    iget-object v1, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v1, v1, Lcom/anddoes/launcher/kj;->h:J

    iget-object v3, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->u:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "swipe_down_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/anddoes/launcher/preference/az;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v0, "LAUNCH_APP"

    iget-object v1, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bd

    iget-boolean v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->D:Z

    if-eqz v0, :cond_1bd

    .line 188
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->k:Lcom/anddoes/launcher/preference/az;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swipe_down_component_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v2, v2, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->v:Ljava/lang/String;

    .line 188
    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/preference/az;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->k:Lcom/anddoes/launcher/preference/az;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swipe_down_app_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v2, v2, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->w:Ljava/lang/String;

    .line 190
    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/preference/az;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->k:Lcom/anddoes/launcher/preference/az;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swipe_down_intent_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v2, v2, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->x:Ljava/lang/String;

    .line 192
    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/preference/az;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_174

    .line 195
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->k:Lcom/anddoes/launcher/preference/az;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swipe_down_pkg_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v2, v2, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/preference/az;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->k:Lcom/anddoes/launcher/preference/az;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swipe_down_act_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v2, v2, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/preference/az;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_174
    :goto_174
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->a:Lcom/anddoes/launcher/LauncherApplication;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/anddoes/launcher/LauncherApplication;->g:Lcom/anddoes/launcher/ec;

    .line 205
    invoke-virtual {p0}, Lcom/anddoes/launcher/SwipeActionsActivity;->finish()V

    .line 207
    :cond_17c
    return-void

    .line 180
    :cond_17d
    const-string v0, "LAUNCH_SHORTCUT"

    iget-object v1, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 181
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->k:Lcom/anddoes/launcher/preference/az;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swipe_up_shortcut_name_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v2, v2, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->s:Ljava/lang/String;

    .line 181
    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/preference/az;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->k:Lcom/anddoes/launcher/preference/az;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swipe_up_shortcut_intent_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v2, v2, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->t:Ljava/lang/String;

    .line 183
    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/preference/az;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c2

    .line 198
    :cond_1bd
    const-string v0, "LAUNCH_SHORTCUT"

    iget-object v1, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_174

    .line 199
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->k:Lcom/anddoes/launcher/preference/az;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swipe_down_shortcut_name_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v2, v2, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->A:Ljava/lang/String;

    .line 199
    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/preference/az;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->k:Lcom/anddoes/launcher/preference/az;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swipe_down_shortcut_intent_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v2, v2, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->B:Ljava/lang/String;

    .line 201
    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/preference/az;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_174
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/anddoes/launcher/SwipeActionsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/LauncherApplication;

    iput-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->a:Lcom/anddoes/launcher/LauncherApplication;

    .line 71
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->a:Lcom/anddoes/launcher/LauncherApplication;

    iget-object v0, v0, Lcom/anddoes/launcher/LauncherApplication;->g:Lcom/anddoes/launcher/ec;

    if-eqz v0, :cond_1a

    .line 72
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->a:Lcom/anddoes/launcher/LauncherApplication;

    iget-object v0, v0, Lcom/anddoes/launcher/LauncherApplication;->g:Lcom/anddoes/launcher/ec;

    instance-of v0, v0, Lcom/anddoes/launcher/kj;

    if-nez v0, :cond_1d

    .line 73
    :cond_1a
    invoke-virtual {p0}, Lcom/anddoes/launcher/SwipeActionsActivity;->finish()V

    .line 75
    :cond_1d
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->a:Lcom/anddoes/launcher/LauncherApplication;

    iget-object v0, v0, Lcom/anddoes/launcher/LauncherApplication;->g:Lcom/anddoes/launcher/ec;

    check-cast v0, Lcom/anddoes/launcher/kj;

    iput-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    .line 76
    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/SwipeActionsActivity;->setContentView(I)V

    .line 78
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/SwipeActionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->b:Landroid/widget/Button;

    .line 79
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/SwipeActionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->c:Landroid/widget/Button;

    .line 81
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/SwipeActionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->d:Landroid/widget/TextView;

    .line 84
    iget-object v1, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-object v0, v0, Lcom/anddoes/launcher/kj;->a:Ljava/lang/CharSequence;

    if-nez v0, :cond_263

    const-string v0, ""

    :goto_60
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const v0, 0x7f08005b

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/SwipeActionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->e:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f08005d

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/SwipeActionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->f:Landroid/widget/TextView;

    .line 88
    invoke-virtual {p0}, Lcom/anddoes/launcher/SwipeActionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->l:[Ljava/lang/String;

    .line 90
    const v0, 0x7f08005a

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/SwipeActionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->g:Landroid/widget/Spinner;

    .line 91
    const v0, 0x7f08005c

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/SwipeActionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->h:Landroid/widget/Spinner;

    .line 93
    new-instance v0, Lcom/anddoes/launcher/preference/az;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/preference/az;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->k:Lcom/anddoes/launcher/preference/az;

    .line 94
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->k:Lcom/anddoes/launcher/preference/az;

    iget-object v1, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v1, v1, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/preference/az;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->m:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->k:Lcom/anddoes/launcher/preference/az;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swipe_up_app_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v2, v2, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/anddoes/launcher/preference/az;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->o:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->k:Lcom/anddoes/launcher/preference/az;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swipe_up_intent_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v2, v2, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/anddoes/launcher/preference/az;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->p:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->k:Lcom/anddoes/launcher/preference/az;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swipe_up_component_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v2, v2, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/anddoes/launcher/preference/az;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->n:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->k:Lcom/anddoes/launcher/preference/az;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swipe_up_pkg_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v2, v2, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/anddoes/launcher/preference/az;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->q:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->k:Lcom/anddoes/launcher/preference/az;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swipe_up_act_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v2, v2, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/anddoes/launcher/preference/az;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->r:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->k:Lcom/anddoes/launcher/preference/az;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swipe_up_shortcut_name_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v2, v2, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/anddoes/launcher/preference/az;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->s:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->k:Lcom/anddoes/launcher/preference/az;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swipe_up_shortcut_intent_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v2, v2, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/anddoes/launcher/preference/az;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->t:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->k:Lcom/anddoes/launcher/preference/az;

    iget-object v1, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v1, v1, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/preference/az;->b(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->u:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->k:Lcom/anddoes/launcher/preference/az;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swipe_down_app_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v2, v2, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/anddoes/launcher/preference/az;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->w:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->k:Lcom/anddoes/launcher/preference/az;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swipe_down_intent_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v2, v2, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/anddoes/launcher/preference/az;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->x:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->k:Lcom/anddoes/launcher/preference/az;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swipe_down_component_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v2, v2, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/anddoes/launcher/preference/az;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->v:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->k:Lcom/anddoes/launcher/preference/az;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swipe_down_pkg_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v2, v2, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/anddoes/launcher/preference/az;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->y:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->k:Lcom/anddoes/launcher/preference/az;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swipe_down_act_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v2, v2, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/anddoes/launcher/preference/az;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->z:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->k:Lcom/anddoes/launcher/preference/az;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swipe_down_shortcut_name_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v2, v2, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/anddoes/launcher/preference/az;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->A:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->k:Lcom/anddoes/launcher/preference/az;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swipe_down_shortcut_intent_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-wide v2, v2, Lcom/anddoes/launcher/kj;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/anddoes/launcher/preference/az;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->B:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->g:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->m:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/anddoes/launcher/SwipeActionsActivity;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 113
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->g:Landroid/widget/Spinner;

    new-instance v1, Lcom/anddoes/launcher/km;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/km;-><init>(Lcom/anddoes/launcher/SwipeActionsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 128
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->h:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->u:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/anddoes/launcher/SwipeActionsActivity;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 129
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->h:Landroid/widget/Spinner;

    new-instance v1, Lcom/anddoes/launcher/kn;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/kn;-><init>(Lcom/anddoes/launcher/SwipeActionsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 144
    invoke-direct {p0}, Lcom/anddoes/launcher/SwipeActionsActivity;->a()V

    .line 145
    return-void

    .line 84
    :cond_263
    iget-object v0, p0, Lcom/anddoes/launcher/SwipeActionsActivity;->i:Lcom/anddoes/launcher/kj;

    iget-object v0, v0, Lcom/anddoes/launcher/kj;->a:Ljava/lang/CharSequence;

    goto/16 :goto_60
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 159
    invoke-static {p0}, Lcom/anddoes/launcher/i;->a(Landroid/content/Context;)Lcom/anddoes/launcher/i;

    move-result-object v0

    const-string v1, "/SwipeActions"

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/i;->b(Ljava/lang/String;)V

    .line 160
    return-void
.end method
