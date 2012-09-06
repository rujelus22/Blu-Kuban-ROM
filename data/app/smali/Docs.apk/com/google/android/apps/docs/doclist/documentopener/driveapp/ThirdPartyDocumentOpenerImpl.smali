.class public Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;
.super Ljava/lang/Object;
.source "ThirdPartyDocumentOpenerImpl.java"

# interfaces
.implements Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpener;


# instance fields
.field private final a:Landroid/content/Context;

.field private final a:Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpener;

.field private final a:Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;

.field private final a:LeZ;

.field private final a:LrN;

.field private final a:LrR;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;LrR;LrN;LeZ;Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpener;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;->a:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;->a:Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;

    .line 93
    iput-object p3, p0, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;->a:LrR;

    .line 94
    iput-object p6, p0, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;->a:Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpener;

    .line 95
    iput-object p4, p0, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;->a:LrN;

    .line 96
    iput-object p5, p0, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;->a:LeZ;

    .line 97
    return-void
.end method

.method private a(LkR;Landroid/os/Bundle;)Ljava/util/List;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LkR;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lsq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    const-string v0, "documentOpenMethod"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    if-nez v0, :cond_f

    sget-object v0, LeD;->a:LeD;

    .line 119
    :goto_a
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;->a(LkR;LeD;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 117
    :cond_f
    invoke-static {v0}, LeD;->valueOf(Ljava/lang/String;)LeD;

    move-result-object v0

    goto :goto_a
.end method

.method private a(LkR;LeD;)Ljava/util/List;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LkR;",
            "LeD;",
            ")",
            "Ljava/util/List",
            "<",
            "Lsq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {}, Lajk;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;->a:Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;

    iget-object v3, p0, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;->a:Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpener;

    invoke-static {p1, p2, v1, v2, v3}, Lsp;->a(LkR;LeD;Landroid/content/Context;Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpener;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    sget-object v1, LeD;->a:LeD;

    sget-object v2, LeD;->b:LeD;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 106
    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;->a:LeZ;

    sget-object v3, LeV;->e:LeV;

    invoke-interface {v2, v3}, LeZ;->a(LeV;)Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 108
    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;->a:LrN;

    invoke-static {p1, v1, v2}, Lso;->a(LkR;Landroid/content/Context;LrN;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 109
    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;->a:LrR;

    iget-object v3, p0, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;->a:LrN;

    invoke-static {p1, v1, v2, v3}, Lsz;->a(LkR;Landroid/content/Context;LrR;LrN;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 112
    :cond_41
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsq;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 123
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsq;

    .line 124
    invoke-virtual {v0}, Lsq;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    const/4 v0, 0x1

    .line 128
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method


# virtual methods
.method public a(LpP;LkR;Landroid/os/Bundle;)LalU;
    .registers 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LpP;",
            "LkR;",
            "Landroid/os/Bundle;",
            ")",
            "LalU",
            "<",
            "LnQ;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p2}, LkR;->g()Ljava/lang/String;

    .line 135
    invoke-virtual {p2}, LkR;->c()Ljava/lang/String;

    .line 137
    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;->a(LkR;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v2

    .line 138
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 139
    const/4 v0, 0x0

    invoke-static {v0}, LalO;->a(Ljava/lang/Object;)LalU;

    move-result-object v0

    .line 176
    :goto_15
    return-object v0

    .line 140
    :cond_16
    invoke-direct {p0, v2}, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;->a:Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpener;->a(LpP;LkR;Landroid/os/Bundle;)LalU;

    move-result-object v0

    goto :goto_15

    .line 147
    :cond_23
    invoke-static {}, Lama;->a()Lama;

    move-result-object v6

    .line 148
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;->a:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 149
    new-instance v0, Lst;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lst;-><init>(Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;Ljava/util/List;LpP;LkR;Landroid/os/Bundle;Lama;)V

    .line 159
    sget v1, LcY;->open_with_dialog_title:I

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 160
    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lsq;->a(Landroid/content/Context;Ljava/util/List;)Landroid/widget/BaseAdapter;

    move-result-object v1

    .line 161
    const/4 v2, -0x1

    invoke-virtual {v7, v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 162
    new-instance v0, Lsu;

    invoke-direct {v0, p0, v6}, Lsu;-><init>(Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;Lama;)V

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 168
    const/high16 v0, 0x104

    new-instance v1, Lsv;

    invoke-direct {v1, p0}, Lsv;-><init>(Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 174
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 176
    invoke-static {v6}, LXS;->a(LalU;)LalU;

    move-result-object v0

    goto :goto_15
.end method

.method public a(LkR;Landroid/os/Bundle;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 182
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;->a(LkR;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    .line 183
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
