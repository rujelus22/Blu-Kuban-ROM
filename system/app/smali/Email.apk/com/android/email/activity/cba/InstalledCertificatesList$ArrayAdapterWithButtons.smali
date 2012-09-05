.class Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;
.super Landroid/widget/ArrayAdapter;
.source "InstalledCertificatesList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/cba/InstalledCertificatesList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrayAdapterWithButtons"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field mInstalledCerInfoObject:[Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;

.field private mOnDeleteListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/cba/InstalledCertificatesList;Landroid/content/Context;[Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;)V
    .registers 6
    .parameter
    .parameter "context"
    .parameter "installedCerInfoObject"

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    .line 450
    const v0, 0x7f04005a

    const v1, 0x7f1000e9

    invoke-direct {p0, p2, v0, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 486
    new-instance v0, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons$1;-><init>(Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;)V

    iput-object v0, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;->mOnDeleteListener:Landroid/view/View$OnClickListener;

    .line 451
    iput-object p2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;->mContext:Landroid/content/Context;

    .line 452
    iput-object p3, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;->mInstalledCerInfoObject:[Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;

    .line 453
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x1

    .line 458
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 459
    iget-object v1, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;->mInstalledCerInfoObject:[Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;

    aget-object v1, v1, p1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 460
    iget-object v1, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;->mOnDeleteListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    const v1, 0x7f1000ea

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 467
    .local v0, listItem_delete:Landroid/widget/CheckBox;
    iget-object v1, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    #getter for: Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteMode:Z
    invoke-static {v1}, Lcom/android/email/activity/cba/InstalledCertificatesList;->access$300(Lcom/android/email/activity/cba/InstalledCertificatesList;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 468
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 483
    :goto_27
    return-object p2

    .line 470
    :cond_28
    iget-object v1, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    #getter for: Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/activity/cba/InstalledCertificatesList;->access$000(Lcom/android/email/activity/cba/InstalledCertificatesList;)Ljava/util/HashSet;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;->mInstalledCerInfoObject:[Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_3c

    .line 473
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_27

    .line 477
    :cond_3c
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_27
.end method
