.class public Lcom/coremobility/app/vnotes/CM_VnoteAboutForm;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    const/4 v7, 0x6

    const/4 v6, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_8
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteAboutForm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "open_source_license_info"

    const-string v4, "raw"

    const-string v5, "com.coremobility.app.vnotes"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_22

    const/4 v1, 0x6

    const-string v2, "Resource not found"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_21
    :goto_21
    return-object v0

    :cond_22
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteAboutForm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_7a

    const/4 v1, 0x6

    const-string v2, "Could not open resource file."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_be
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_35} :catch_36

    goto :goto_21

    :catch_36
    move-exception v1

    move-object v2, v0

    :goto_38
    const/4 v3, 0x6

    :try_start_39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERROR: Could not open resource file."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v1, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_56
    .catchall {:try_start_39 .. :try_end_56} :catchall_e5

    if-eqz v2, :cond_21

    :try_start_58
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_21

    :catch_5c
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: when closing the input stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_21

    :cond_7a
    :try_start_7a
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_be
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_84} :catch_36

    :goto_84
    :try_start_84
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_90

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_8d
    .catchall {:try_start_84 .. :try_end_8d} :catchall_e5
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_8d} :catch_8e

    goto :goto_84

    :catch_8e
    move-exception v1

    goto :goto_38

    :cond_90
    :try_start_90
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_93} :catch_a0

    :goto_93
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\t"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :catch_a0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: when closing the input stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_93

    :catchall_be
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_c1
    if-eqz v2, :cond_c6

    :try_start_c3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c6} :catch_c7

    :cond_c6
    :goto_c6
    throw v0

    :catch_c7
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: when closing the input stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c6

    :catchall_e5
    move-exception v0

    goto :goto_c1
.end method

.method private b()V
    .registers 6

    const/4 v3, 0x1

    const v0, 0x7f0b000b

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteAboutForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAboutForm;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAboutForm;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b000c

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteAboutForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAboutForm;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAboutForm;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b000a

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteAboutForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAboutForm;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAboutForm;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteAboutForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAboutForm;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAboutForm;->d:Landroid/widget/TextView;

    const v2, 0x7f0c0082

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteAboutForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    const/high16 v0, 0x10a

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteAboutForm;->overridePendingTransition(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAboutForm;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_f

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->aa()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, p0}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;ZLandroid/app/Activity;)Z

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteAboutForm;->finish()V

    :cond_f
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteAboutForm;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_16

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteAboutForm;->showDialog(I)V

    :cond_16
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteAboutForm;->setContentView(I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteAboutForm;->b()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteAboutForm;->requestWindowFeature(I)Z

    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteAboutForm;->setContentView(I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteAboutForm;->b()V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/16 v4, 0xa

    packed-switch p1, :pswitch_data_66

    move-object v0, v1

    :goto_8
    return-object v0

    :pswitch_9
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVerticalScrollBarEnabled(Z)V

    const/4 v0, 0x5

    invoke-virtual {v3, v4, v4, v0, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteAboutForm;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2d

    :cond_26
    const v0, 0x7f0c00ba

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteAboutForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2d
    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v3, v5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c00b9

    invoke-virtual {p0, v3}, Lcom/coremobility/app/vnotes/CM_VnoteAboutForm;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c00f2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_8

    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
