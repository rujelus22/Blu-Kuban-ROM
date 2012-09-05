.class public Leu/chainfire/supersu/LogDetailActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/os/Bundle;

.field private b:Leu/chainfire/supersu/Logs;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->a:Landroid/os/Bundle;

    iput-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->b:Leu/chainfire/supersu/Logs;

    iput-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/supersu/LogDetailActivity;->d:I

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/LogDetailActivity;)I
    .registers 2

    iget v0, p0, Leu/chainfire/supersu/LogDetailActivity;->d:I

    return v0
.end method

.method private a()V
    .registers 16

    const/16 v11, 0xff

    const/16 v10, 0x44

    const/16 v9, 0x21

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->b:Leu/chainfire/supersu/Logs;

    iget-object v0, v0, Leu/chainfire/supersu/Logs;->b:Ljava/util/ArrayList;

    iget v2, p0, Leu/chainfire/supersu/LogDetailActivity;->d:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Logs$Log;

    const-string v2, "%s @ %s %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Leu/chainfire/supersu/Logs$Log;->m:Ljava/lang/String;

    aput-object v5, v4, v1

    iget-object v5, p0, Leu/chainfire/supersu/LogDetailActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v5}, Leu/chainfire/supersu/Logs$Log;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v5, 0x2

    iget-object v6, p0, Leu/chainfire/supersu/LogDetailActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v6}, Leu/chainfire/supersu/Logs$Log;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Leu/chainfire/supersu/Logs$Log;->b:Ljava/lang/String;

    const v0, 0x7f04002e

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/LogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f040030

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/LogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget v0, p0, Leu/chainfire/supersu/LogDetailActivity;->d:I

    if-nez v0, :cond_9b

    const/4 v0, 0x4

    :goto_4c
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f040031

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/LogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget v0, p0, Leu/chainfire/supersu/LogDetailActivity;->d:I

    iget-object v5, p0, Leu/chainfire/supersu/LogDetailActivity;->b:Leu/chainfire/supersu/Logs;

    iget-object v5, v5, Leu/chainfire/supersu/Logs;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_9d

    const/4 v0, 0x4

    :goto_65
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f04002f

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/LogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p0}, Leu/chainfire/supersu/Settings;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_9f

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Leu/chainfire/supersu/LogDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09002a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v11, v10, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_9a
    return-void

    :cond_9b
    move v0, v1

    goto :goto_4c

    :cond_9d
    move v0, v1

    goto :goto_65

    :cond_9f
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_21f

    move v2, v1

    :goto_ab
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_be

    const-string v5, ".DENIED."

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_be

    move v2, v1

    :cond_be
    if-nez v2, :cond_e4

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Leu/chainfire/supersu/LogDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09005e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v11, v10, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9a

    :cond_e4
    :try_start_e4
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_e9} :catch_20a

    :try_start_e9
    new-instance v2, Ljava/lang/StringBuilder;

    const v4, 0x11170

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_f1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_210

    :cond_f8
    const/4 v6, -0x1

    if-eq v4, v6, :cond_205

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/text/SpannableStringBuilder;

    const-string v6, ""

    invoke-direct {v4, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v6, "INTERACTIVE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const/16 v7, 0x99

    const/16 v8, 0xcc

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v8, 0x21

    invoke-virtual {v4, v6, v7, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_13e
    const/4 v2, 0x2

    new-array v6, v2, [I

    const/4 v2, 0x2

    new-array v7, v2, [I

    move v2, v1

    :cond_145
    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v9

    aput v9, v6, v8

    const/4 v8, 0x1

    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v9

    aput v9, v6, v8

    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v5}, Ljava/io/FileInputStream;->read()I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x0

    aget v8, v6, v8

    if-ltz v8, :cond_202

    const/4 v8, 0x1

    aget v8, v6, v8

    if-ltz v8, :cond_202

    const/4 v8, 0x0

    aget v8, v7, v8

    if-ltz v8, :cond_202

    const/4 v8, 0x1

    aget v8, v7, v8

    if-ltz v8, :cond_202

    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, 0x1

    aget v9, v6, v9

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    const/4 v9, 0x0

    aget v9, v7, v9

    const/4 v10, 0x1

    aget v10, v7, v10

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    new-array v10, v9, [B

    invoke-virtual {v5, v10}, Ljava/io/FileInputStream;->read([B)I

    move-result v11

    if-ne v11, v9, :cond_202

    add-int/2addr v2, v9

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    new-instance v12, Ljava/lang/String;

    const-string v13, "UTF-8"

    invoke-direct {v12, v10, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v13, " "

    const-string v14, "\u00a0"

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    if-nez v1, :cond_1b9

    add-int/lit8 v9, v9, -0x1

    aget-byte v9, v10, v9

    const/16 v10, 0xa

    if-eq v9, v10, :cond_1b9

    const/16 v9, 0xa

    invoke-virtual {v4, v9}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_1b9
    if-ne v8, v3, :cond_1ce

    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    const/16 v10, 0x99

    const/16 v13, 0xcc

    const/4 v14, 0x0

    invoke-static {v10, v13, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v10, 0x21

    invoke-virtual {v4, v9, v11, v12, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1ce
    const/4 v9, 0x2

    if-ne v8, v9, :cond_1e5

    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    const/16 v10, 0xff

    const/16 v13, 0xff

    const/16 v14, 0xff

    invoke-static {v10, v13, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v10, 0x21

    invoke-virtual {v4, v9, v11, v12, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1e5
    const/4 v9, 0x3

    if-ne v8, v9, :cond_1fc

    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    const/16 v9, 0xff

    const/16 v10, 0x44

    const/16 v13, 0x44

    invoke-static {v9, v10, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v9, 0x21

    invoke-virtual {v4, v8, v11, v12, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1fc
    add-int/lit8 v1, v1, 0x1

    const/16 v8, 0x4000

    if-lt v2, v8, :cond_145

    :cond_202
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_205
    .catchall {:try_start_e9 .. :try_end_205} :catchall_21a

    :cond_205
    :try_start_205
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_208
    .catch Ljava/lang/Exception; {:try_start_205 .. :try_end_208} :catch_20a

    goto/16 :goto_9a

    :catch_20a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9a

    :cond_210
    const/16 v6, 0xa

    if-eq v4, v6, :cond_f8

    int-to-char v4, v4

    :try_start_215
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_218
    .catchall {:try_start_215 .. :try_end_218} :catchall_21a

    goto/16 :goto_f1

    :catchall_21a
    move-exception v0

    :try_start_21b
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    throw v0
    :try_end_21f
    .catch Ljava/lang/Exception; {:try_start_21b .. :try_end_21f} :catch_20a

    :cond_21f
    move v2, v3

    goto/16 :goto_ab
.end method

.method public static a(Landroid/app/Activity;I)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Leu/chainfire/supersu/LogDetailActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "eu.chainfire.supersu.extra.logposition"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x1200

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/LogDetailActivity;I)V
    .registers 2

    iput p1, p0, Leu/chainfire/supersu/LogDetailActivity;->d:I

    return-void
.end method

.method static synthetic b(Leu/chainfire/supersu/LogDetailActivity;)V
    .registers 1

    invoke-direct {p0}, Leu/chainfire/supersu/LogDetailActivity;->a()V

    return-void
.end method


# virtual methods
.method public onClose(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/LogDetailActivity;->setResult(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/LogDetailActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v1, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/LogDetailActivity;->setContentView(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/LogDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "config_%s_logformat"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "default"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "31122359"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->c:Ljava/lang/String;

    sget-object v0, Leu/chainfire/supersu/Logs;->a:Leu/chainfire/supersu/Logs;

    iput-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->b:Leu/chainfire/supersu/Logs;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->a:Landroid/os/Bundle;

    invoke-virtual {p0}, Leu/chainfire/supersu/LogDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->a:Landroid/os/Bundle;

    invoke-virtual {p0}, Leu/chainfire/supersu/LogDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_4d
    if-eqz p1, :cond_54

    iget-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_54
    iget-object v0, p0, Leu/chainfire/supersu/LogDetailActivity;->a:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.extra.logposition"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/LogDetailActivity;->d:I

    invoke-direct {p0}, Leu/chainfire/supersu/LogDetailActivity;->a()V

    return-void
.end method

.method public onNext(Landroid/view/View;)V
    .registers 8

    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    const/4 v2, 0x0

    const v3, 0x7f04002f

    invoke-virtual {p0, v3}, Leu/chainfire/supersu/LogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_32

    invoke-static {v3, v4, v5}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    new-instance v1, Leu/chainfire/supersu/LogDetailActivity$2;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/LogDetailActivity$2;-><init>(Leu/chainfire/supersu/LogDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->start()V

    return-void

    :array_32
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onPrev(Landroid/view/View;)V
    .registers 8

    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;

    const/4 v2, 0x0

    const v3, 0x7f04002f

    invoke-virtual {p0, v3}, Leu/chainfire/supersu/LogDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_32

    invoke-static {v3, v4, v5}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V

    new-instance v1, Leu/chainfire/supersu/LogDetailActivity$1;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/LogDetailActivity$1;-><init>(Leu/chainfire/supersu/LogDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorSet;->start()V

    return-void

    :array_32
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "eu.chainfire.supersu.extra.logposition"

    iget v1, p0, Leu/chainfire/supersu/LogDetailActivity;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/LogDetailActivity;->setResult(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/LogDetailActivity;->finish()V

    return-void
.end method
