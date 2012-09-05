.class public Lcom/vlingo/client/contacts/ViewContactActivity;
.super Lcom/vlingo/client/ui/VLActivity;
.source "ViewContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/contacts/ViewContactActivity$Contact;,
        Lcom/vlingo/client/contacts/ViewContactActivity$ContactMatchListenerImpl;
    }
.end annotation


# static fields
.field public static final EXTRA_CONTACT_NAME:Ljava/lang/String; = "com.vlingo.client.contacts.EXTRA_CONTACT_NAME"


# instance fields
.field protected contactsMatcher:Lcom/vlingo/client/contacts/VLContactsMatcher;

.field private isLaunchedFromHistory:Z

.field protected topMatch:Lcom/vlingo/client/core/contacts/VlingoContact;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/vlingo/client/ui/VLActivity;-><init>()V

    .line 164
    return-void
.end method


# virtual methods
.method public handleResults()V
    .registers 4

    .prologue
    .line 60
    iget-object v2, p0, Lcom/vlingo/client/contacts/ViewContactActivity;->topMatch:Lcom/vlingo/client/core/contacts/VlingoContact;

    if-nez v2, :cond_b

    .line 61
    invoke-virtual {p0}, Lcom/vlingo/client/contacts/ViewContactActivity;->onNoMatchingContacts()V

    .line 62
    invoke-virtual {p0}, Lcom/vlingo/client/contacts/ViewContactActivity;->finish()V

    .line 81
    :cond_a
    :goto_a
    return-void

    .line 65
    :cond_b
    iget-object v2, p0, Lcom/vlingo/client/contacts/ViewContactActivity;->topMatch:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v2}, Lcom/vlingo/client/core/contacts/VlingoContact;->getId()I

    move-result v0

    .line 67
    .local v0, id:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2b

    .line 68
    invoke-virtual {p0}, Lcom/vlingo/client/contacts/ViewContactActivity;->onNoMatchingContacts()V

    .line 71
    iget-boolean v2, p0, Lcom/vlingo/client/contacts/ViewContactActivity;->isLaunchedFromHistory:Z

    if-eqz v2, :cond_a

    .line 72
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vlingo/client/home/HomeActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, v1}, Lcom/vlingo/client/contacts/ViewContactActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    .line 78
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2b
    invoke-virtual {p0, v0}, Lcom/vlingo/client/contacts/ViewContactActivity;->openContact(I)V

    goto :goto_a
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "extras"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 43
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0, v2}, Lcom/vlingo/client/contacts/ViewContactActivity;->requestWindowFeature(I)Z

    .line 45
    invoke-virtual {p0}, Lcom/vlingo/client/contacts/ViewContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "com.vlingo.client.contacts.EXTRA_CONTACT_NAME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, query:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vlingo/client/contacts/ViewContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v4, 0x10

    and-int/2addr v1, v4

    if-eqz v1, :cond_4c

    move v1, v2

    :goto_20
    iput-boolean v1, p0, Lcom/vlingo/client/contacts/ViewContactActivity;->isLaunchedFromHistory:Z

    .line 49
    invoke-static {v0}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 50
    new-instance v1, Lcom/vlingo/client/contacts/VLContactsMatcher;

    new-instance v4, Lcom/vlingo/client/contacts/ViewContactActivity$ContactMatchListenerImpl;

    invoke-direct {v4, p0}, Lcom/vlingo/client/contacts/ViewContactActivity$ContactMatchListenerImpl;-><init>(Lcom/vlingo/client/contacts/ViewContactActivity;)V

    invoke-direct {v1, v4, p0}, Lcom/vlingo/client/contacts/VLContactsMatcher;-><init>(Lcom/vlingo/client/core/contacts/ContactsMatcherListener;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/vlingo/client/contacts/ViewContactActivity;->contactsMatcher:Lcom/vlingo/client/contacts/VLContactsMatcher;

    .line 51
    iget-object v1, p0, Lcom/vlingo/client/contacts/ViewContactActivity;->contactsMatcher:Lcom/vlingo/client/contacts/VLContactsMatcher;

    const-string v4, "call"

    new-array v2, v2, [I

    const/4 v5, -0x1

    aput v5, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v2, v3}, Lcom/vlingo/client/contacts/VLContactsMatcher;->initialize(Ljava/lang/String;[I[I)V

    .line 52
    iget-object v1, p0, Lcom/vlingo/client/contacts/ViewContactActivity;->contactsMatcher:Lcom/vlingo/client/contacts/VLContactsMatcher;

    const/high16 v2, 0x42c8

    invoke-virtual {v1, v0, v2}, Lcom/vlingo/client/contacts/VLContactsMatcher;->startSearch(Ljava/lang/String;F)Lcom/vlingo/client/core/contacts/VlingoContact;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/contacts/ViewContactActivity;->topMatch:Lcom/vlingo/client/core/contacts/VlingoContact;

    .line 57
    :goto_4b
    return-void

    :cond_4c
    move v1, v3

    .line 47
    goto :goto_20

    .line 55
    :cond_4e
    invoke-virtual {p0}, Lcom/vlingo/client/contacts/ViewContactActivity;->onNoMatchingContacts()V

    goto :goto_4b
.end method

.method public onNoMatchingContacts()V
    .registers 4

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/vlingo/client/contacts/ViewContactActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09025d

    invoke-virtual {p0, v1}, Lcom/vlingo/client/contacts/ViewContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 129
    invoke-virtual {p0}, Lcom/vlingo/client/contacts/ViewContactActivity;->finish()V

    .line 130
    return-void
.end method

.method public openContact(I)V
    .registers 6
    .parameter "contactId"

    .prologue
    .line 133
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, intent:Landroid/content/Intent;
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 135
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 137
    :try_start_14
    invoke-virtual {p0, v0}, Lcom/vlingo/client/contacts/ViewContactActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_17
    .catch Landroid/content/ActivityNotFoundException; {:try_start_14 .. :try_end_17} :catch_1b

    .line 143
    :goto_17
    invoke-virtual {p0}, Lcom/vlingo/client/contacts/ViewContactActivity;->finish()V

    .line 144
    return-void

    .line 139
    :catch_1b
    move-exception v2

    goto :goto_17
.end method

.method public showChoosePopupDialog()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v2, contacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/contacts/ViewContactActivity$Contact;>;"
    iget-object v5, p0, Lcom/vlingo/client/contacts/ViewContactActivity;->topMatch:Lcom/vlingo/client/core/contacts/VlingoContact;

    if-eqz v5, :cond_1e

    .line 87
    new-instance v5, Lcom/vlingo/client/contacts/ViewContactActivity$Contact;

    iget-object v6, p0, Lcom/vlingo/client/contacts/ViewContactActivity;->topMatch:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v6}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/vlingo/client/contacts/ViewContactActivity;->topMatch:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v7}, Lcom/vlingo/client/core/contacts/VlingoContact;->getId()I

    move-result v7

    invoke-direct {v5, p0, v6, v7}, Lcom/vlingo/client/contacts/ViewContactActivity$Contact;-><init>(Lcom/vlingo/client/contacts/ViewContactActivity;Ljava/lang/String;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_1e
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1f
    iget-object v5, p0, Lcom/vlingo/client/contacts/ViewContactActivity;->contactsMatcher:Lcom/vlingo/client/contacts/VLContactsMatcher;

    invoke-virtual {v5}, Lcom/vlingo/client/contacts/VLContactsMatcher;->getNumContacts()I

    move-result v5

    if-ge v4, v5, :cond_5c

    .line 90
    iget-object v5, p0, Lcom/vlingo/client/contacts/ViewContactActivity;->contactsMatcher:Lcom/vlingo/client/contacts/VLContactsMatcher;

    invoke-virtual {v5}, Lcom/vlingo/client/contacts/VLContactsMatcher;->getSortedContacts()Lcom/vlingo/client/core/contacts/SortedContactList;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/vlingo/client/core/contacts/SortedContactList;->get(I)Lcom/vlingo/client/core/contacts/DisplayItem;

    move-result-object v3

    .line 91
    .local v3, di:Lcom/vlingo/client/core/contacts/DisplayItem;
    new-instance v1, Lcom/vlingo/client/contacts/ViewContactActivity$Contact;

    iget-object v5, v3, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v5}, Lcom/vlingo/client/core/contacts/VlingoContact;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v6}, Lcom/vlingo/client/core/contacts/VlingoContact;->getId()I

    move-result v6

    invoke-direct {v1, p0, v5, v6}, Lcom/vlingo/client/contacts/ViewContactActivity$Contact;-><init>(Lcom/vlingo/client/contacts/ViewContactActivity;Ljava/lang/String;I)V

    .line 92
    .local v1, contact:Lcom/vlingo/client/contacts/ViewContactActivity$Contact;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_59

    iget-object v5, p0, Lcom/vlingo/client/contacts/ViewContactActivity;->topMatch:Lcom/vlingo/client/core/contacts/VlingoContact;

    if-eqz v5, :cond_59

    iget v5, v1, Lcom/vlingo/client/contacts/ViewContactActivity$Contact;->id:I

    iget-object v6, p0, Lcom/vlingo/client/contacts/ViewContactActivity;->topMatch:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v6}, Lcom/vlingo/client/core/contacts/VlingoContact;->getId()I

    move-result v6

    if-eq v5, v6, :cond_59

    .line 93
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_59
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 97
    .end local v1           #contact:Lcom/vlingo/client/contacts/ViewContactActivity$Contact;
    .end local v3           #di:Lcom/vlingo/client/core/contacts/DisplayItem;
    :cond_5c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_66

    .line 98
    invoke-virtual {p0}, Lcom/vlingo/client/contacts/ViewContactActivity;->onNoMatchingContacts()V

    .line 124
    :goto_65
    return-void

    .line 100
    :cond_66
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_79

    .line 101
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vlingo/client/contacts/ViewContactActivity$Contact;

    iget v5, v5, Lcom/vlingo/client/contacts/ViewContactActivity$Contact;->id:I

    invoke-virtual {p0, v5}, Lcom/vlingo/client/contacts/ViewContactActivity;->openContact(I)V

    goto :goto_65

    .line 105
    :cond_79
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 106
    .local v0, build:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f09025a

    invoke-virtual {p0, v5}, Lcom/vlingo/client/contacts/ViewContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f090048

    invoke-virtual {p0, v6}, Lcom/vlingo/client/contacts/ViewContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/vlingo/client/contacts/ViewContactActivity$2;

    invoke-direct {v7, p0}, Lcom/vlingo/client/contacts/ViewContactActivity$2;-><init>(Lcom/vlingo/client/contacts/ViewContactActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/vlingo/client/contacts/ViewContactActivity$1;

    invoke-direct {v6, p0}, Lcom/vlingo/client/contacts/ViewContactActivity$1;-><init>(Lcom/vlingo/client/contacts/ViewContactActivity;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 117
    new-array v5, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    const/4 v6, -0x1

    new-instance v7, Lcom/vlingo/client/contacts/ViewContactActivity$3;

    invoke-direct {v7, p0, v2}, Lcom/vlingo/client/contacts/ViewContactActivity$3;-><init>(Lcom/vlingo/client/contacts/ViewContactActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_65
.end method
