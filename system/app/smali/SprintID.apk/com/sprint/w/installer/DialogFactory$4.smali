.class final Lcom/sprint/w/installer/DialogFactory$4;
.super Ljava/lang/Object;
.source "DialogFactory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/DialogFactory;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/sprint/w/installer/DialogFactory$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12
    .parameter "d"
    .parameter "which"

    .prologue
    .line 150
    move-object v3, p1

    check-cast v3, Landroid/app/Dialog;

    .line 152
    .local v3, dial:Landroid/app/Dialog;
    const v8, 0x7f0c0023

    invoke-virtual {v3, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 153
    .local v7, v:Landroid/widget/TextView;
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, baseUrl:Ljava/lang/String;
    iget-object v8, p0, Lcom/sprint/w/installer/DialogFactory$4;->val$context:Landroid/content/Context;

    invoke-static {v8, v1}, Lcom/sprint/w/installer/util/Util;->setStoredContentBaseUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 156
    const v8, 0x7f0c0025

    invoke-virtual {v3, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #v:Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 157
    .restart local v7       #v:Landroid/widget/TextView;
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, metaUrl:Ljava/lang/String;
    iget-object v8, p0, Lcom/sprint/w/installer/DialogFactory$4;->val$context:Landroid/content/Context;

    invoke-static {v8, v5}, Lcom/sprint/w/installer/util/Util;->setStoredMetaBaseUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 160
    const v8, 0x7f0c0027

    invoke-virtual {v3, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #v:Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 161
    .restart local v7       #v:Landroid/widget/TextView;
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 162
    .local v6, uaProf:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5c

    sget-object v8, Lcom/sprint/w/installer/DialogFactory;->sUaProfSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5c

    .line 163
    sget-object v8, Lcom/sprint/w/installer/DialogFactory;->sUaProfSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v8, Lcom/sprint/w/installer/DialogFactory;->sUaProfSuggestions:Ljava/util/ArrayList;

    invoke-static {v8}, Lcom/sprint/w/installer/util/Util;->saveUaProfSuggestions(Ljava/util/List;)V

    .line 166
    :cond_5c
    iget-object v8, p0, Lcom/sprint/w/installer/DialogFactory$4;->val$context:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/sprint/w/installer/util/Util;->setStoredUaProf(Landroid/content/Context;Ljava/lang/String;)V

    .line 168
    const v8, 0x7f0c0029

    invoke-virtual {v3, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #v:Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 169
    .restart local v7       #v:Landroid/widget/TextView;
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, folderId:Ljava/lang/String;
    iget-object v8, p0, Lcom/sprint/w/installer/DialogFactory$4;->val$context:Landroid/content/Context;

    invoke-static {v8, v4}, Lcom/sprint/w/installer/util/Util;->setStoredFolderId(Landroid/content/Context;Ljava/lang/String;)V

    .line 172
    const v8, 0x7f0c0021

    invoke-virtual {v3, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 173
    .local v2, cb:Landroid/widget/CheckBox;
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    invoke-static {v8}, Lcom/sprint/w/installer/util/Util;->setUsingMag(Z)V

    .line 175
    iget-object v0, p0, Lcom/sprint/w/installer/DialogFactory$4;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 176
    .local v0, a:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 177
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 178
    return-void
.end method
