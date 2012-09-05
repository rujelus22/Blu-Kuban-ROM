.class public Lcom/sprint/w/installer/DialogFactory;
.super Ljava/lang/Object;
.source "DialogFactory.java"


# static fields
.field public static final DIALOG_ADVANCED:I = 0x2

.field public static final DIALOG_ENTER_FILE_NAME:I = 0x0

.field public static final DIALOG_ENTER_URL:I = 0x1

.field public static final DIALOG_PACK_LIMIT:I = 0x5

.field public static final DIALOG_PACK_LIMIT_EXCEEDED:I = 0x4

.field private static log:Lcom/sprint/id/logger/Logger;

.field static sUaProfSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lcom/sprint/w/installer/ContentProvider;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sprint/w/installer/DialogFactory;->log:Lcom/sprint/id/logger/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDialog(Landroid/content/Context;I)Landroid/app/Dialog;
    .registers 9
    .parameter "context"
    .parameter "id"

    .prologue
    const v5, 0x104000a

    const/high16 v6, 0x104

    const/4 v0, 0x0

    .line 40
    packed-switch p1, :pswitch_data_d4

    .line 195
    :goto_9
    :pswitch_9
    return-object v0

    .line 42
    :pswitch_a
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03000e

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 43
    .local v2, v:Landroid/view/View;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f06003d

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/sprint/w/installer/DialogFactory$1;

    invoke-direct {v4, p0}, Lcom/sprint/w/installer/DialogFactory$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_9

    .line 62
    .end local v2           #v:Landroid/view/View;
    :pswitch_37
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030030

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 63
    .restart local v2       #v:Landroid/view/View;
    const v3, 0x7f0c002f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 64
    .local v1, t:Landroid/widget/TextView;
    const-string v3, "http://"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f06003a

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/sprint/w/installer/DialogFactory$2;

    invoke-direct {v4}, Lcom/sprint/w/installer/DialogFactory$2;-><init>()V

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 73
    .local v0, d:Landroid/app/AlertDialog;
    new-instance v3, Lcom/sprint/w/installer/DialogFactory$3;

    invoke-direct {v3, v0, v1, p0}, Lcom/sprint/w/installer/DialogFactory$3;-><init>(Landroid/app/AlertDialog;Landroid/widget/TextView;Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    goto :goto_9

    .line 146
    .end local v0           #d:Landroid/app/AlertDialog;
    .end local v1           #t:Landroid/widget/TextView;
    .end local v2           #v:Landroid/view/View;
    :pswitch_7a
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03000b

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 147
    .restart local v2       #v:Landroid/view/View;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f06003c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/sprint/w/installer/DialogFactory$4;

    invoke-direct {v4, p0}, Lcom/sprint/w/installer/DialogFactory$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_9

    .line 182
    .end local v2           #v:Landroid/view/View;
    :pswitch_ac
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f060087

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f060032

    new-instance v5, Lcom/sprint/w/installer/DialogFactory$6;

    invoke-direct {v5, p0}, Lcom/sprint/w/installer/DialogFactory$6;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/sprint/w/installer/DialogFactory$5;

    invoke-direct {v4}, Lcom/sprint/w/installer/DialogFactory$5;-><init>()V

    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_9

    .line 40
    nop

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_a
        :pswitch_37
        :pswitch_7a
        :pswitch_9
        :pswitch_ac
    .end packed-switch
.end method

.method public static prepareDialog(Landroid/content/Context;ILandroid/app/Dialog;)V
    .registers 16
    .parameter "context"
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 201
    packed-switch p1, :pswitch_data_f2

    .line 253
    :cond_3
    :goto_3
    return-void

    .line 204
    :pswitch_4
    const v8, 0x7f0c0021

    invoke-virtual {p2, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 205
    .local v0, cb:Landroid/widget/CheckBox;
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->isUsingMag()Z

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 207
    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const v9, 0x7f060113

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    .line 210
    .local v5, psiUrls:[Ljava/lang/String;
    const v8, 0x7f0c0023

    invoke-virtual {p2, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/AutoCompleteTextView;

    .line 211
    .local v2, edit:Landroid/widget/AutoCompleteTextView;
    invoke-static {p0}, Lcom/sprint/w/installer/util/Util;->getStoredContentBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    new-instance v8, Landroid/widget/ArrayAdapter;

    const v9, 0x7f030003

    invoke-direct {v8, p0, v9, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v8}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 213
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 215
    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const v9, 0x7f060114

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    .line 218
    .local v6, riaUrls:[Ljava/lang/String;
    const v8, 0x7f0c0025

    invoke-virtual {p2, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #edit:Landroid/widget/AutoCompleteTextView;
    check-cast v2, Landroid/widget/AutoCompleteTextView;

    .line 219
    .restart local v2       #edit:Landroid/widget/AutoCompleteTextView;
    invoke-static {p0}, Lcom/sprint/w/installer/util/Util;->getStoredMetaBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    new-instance v8, Landroid/widget/ArrayAdapter;

    const v9, 0x7f030003

    invoke-direct {v8, p0, v9, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v8}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 221
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 223
    sget-object v8, Lcom/sprint/w/installer/DialogFactory;->sUaProfSuggestions:Ljava/util/ArrayList;

    if-nez v8, :cond_76

    .line 224
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->loadUaProfSuggestions()Ljava/util/ArrayList;

    move-result-object v8

    sput-object v8, Lcom/sprint/w/installer/DialogFactory;->sUaProfSuggestions:Ljava/util/ArrayList;

    .line 226
    :cond_76
    const v8, 0x7f0c0027

    invoke-virtual {p2, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #edit:Landroid/widget/AutoCompleteTextView;
    check-cast v2, Landroid/widget/AutoCompleteTextView;

    .line 227
    .restart local v2       #edit:Landroid/widget/AutoCompleteTextView;
    new-instance v8, Landroid/widget/ArrayAdapter;

    const v9, 0x7f030003

    sget-object v10, Lcom/sprint/w/installer/DialogFactory;->sUaProfSuggestions:Ljava/util/ArrayList;

    invoke-direct {v8, p0, v9, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v2, v8}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 228
    invoke-static {p0}, Lcom/sprint/w/installer/util/Util;->getStoredUaProf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 231
    invoke-static {p0}, Lcom/sprint/w/installer/util/Util;->getStoredFolderId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, folderId:Ljava/lang/String;
    const v8, 0x7f0c0029

    invoke-virtual {p2, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #edit:Landroid/widget/AutoCompleteTextView;
    check-cast v2, Landroid/widget/AutoCompleteTextView;

    .line 233
    .restart local v2       #edit:Landroid/widget/AutoCompleteTextView;
    invoke-virtual {v2, v4}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    new-instance v8, Landroid/widget/ArrayAdapter;

    const v9, 0x7f030003

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "Main"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    invoke-direct {v8, p0, v9, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v8}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 237
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    goto/16 :goto_3

    .line 241
    .end local v0           #cb:Landroid/widget/CheckBox;
    .end local v2           #edit:Landroid/widget/AutoCompleteTextView;
    .end local v4           #folderId:Ljava/lang/String;
    .end local v5           #psiUrls:[Ljava/lang/String;
    .end local v6           #riaUrls:[Ljava/lang/String;
    :pswitch_c3
    :try_start_c3
    new-instance v1, Lcom/sprint/w/installer/dev/DeveloperPermissions;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/dev/DeveloperPermissions;-><init>(Landroid/content/Context;)V

    .line 242
    .local v1, dp:Lcom/sprint/w/installer/dev/DeveloperPermissions;
    invoke-virtual {v1}, Lcom/sprint/w/installer/dev/DeveloperPermissions;->isDeveloperModeEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 243
    const v8, 0x7f0c002f

    invoke-virtual {p2, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 244
    .local v7, urlEntry:Landroid/widget/EditText;
    invoke-virtual {v1}, Lcom/sprint/w/installer/dev/DeveloperPermissions;->getDefaultURL()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 245
    invoke-virtual {v1}, Lcom/sprint/w/installer/dev/DeveloperPermissions;->isAllowedEditURL()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setEnabled(Z)V
    :try_end_e5
    .catch Ljava/lang/Throwable; {:try_start_c3 .. :try_end_e5} :catch_e7

    goto/16 :goto_3

    .line 247
    .end local v1           #dp:Lcom/sprint/w/installer/dev/DeveloperPermissions;
    .end local v7           #urlEntry:Landroid/widget/EditText;
    :catch_e7
    move-exception v3

    .line 248
    .local v3, ex:Ljava/lang/Throwable;
    sget-object v8, Lcom/sprint/w/installer/DialogFactory;->log:Lcom/sprint/id/logger/Logger;

    const-string v9, "Problem loading ADP values"

    invoke-virtual {v8, v9, v3}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 201
    nop

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_c3
        :pswitch_4
    .end packed-switch
.end method
