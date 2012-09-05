.class public Lcom/syncmldstmo/smluiNetwork;
.super Landroid/app/Activity;
.source "smluiNetwork.java"


# static fields
.field public static edNetworkAPN:Landroid/widget/EditText;

.field public static edNetworkID:Landroid/widget/EditText;

.field public static edNetworkName:Landroid/widget/EditText;

.field public static edNetworkPW:Landroid/widget/EditText;

.field public static edPort:Landroid/widget/EditText;

.field public static edProxyAddr:Landroid/widget/EditText;


# instance fields
.field private networkProfile:Lcom/syncmldstmo/database/smlDbNetworkProfile;

.field private profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/syncmldstmo/smluiNetwork;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 20
    iput-object v0, p0, Lcom/syncmldstmo/smluiNetwork;->networkProfile:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    return-void
.end method

.method static synthetic access$000(Lcom/syncmldstmo/smluiNetwork;)Lcom/syncmldstmo/database/smlDbNetworkProfile;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/syncmldstmo/smluiNetwork;->networkProfile:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    return-object v0
.end method

.method static synthetic access$100(Lcom/syncmldstmo/smluiNetwork;)Lcom/syncmldstmo/database/smlDbProfileInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/syncmldstmo/smluiNetwork;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Lcom/syncmldstmo/smluiNetwork;->setContentView(I)V

    .line 34
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v2

    invoke-static {v2}, Lcom/syncmldstmo/database/smlDb;->smlGetProfileInfo(I)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/syncmldstmo/smluiNetwork;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 35
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetNetworkProfile()Lcom/syncmldstmo/database/smlDbNetworkProfile;

    move-result-object v2

    iput-object v2, p0, Lcom/syncmldstmo/smluiNetwork;->networkProfile:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    .line 38
    const v2, 0x7f070002

    invoke-virtual {p0, v2}, Lcom/syncmldstmo/smluiNetwork;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    sput-object v2, Lcom/syncmldstmo/smluiNetwork;->edNetworkName:Landroid/widget/EditText;

    .line 39
    const v2, 0x7f070003

    invoke-virtual {p0, v2}, Lcom/syncmldstmo/smluiNetwork;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    sput-object v2, Lcom/syncmldstmo/smluiNetwork;->edNetworkAPN:Landroid/widget/EditText;

    .line 40
    const v2, 0x7f070005

    invoke-virtual {p0, v2}, Lcom/syncmldstmo/smluiNetwork;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    sput-object v2, Lcom/syncmldstmo/smluiNetwork;->edNetworkID:Landroid/widget/EditText;

    .line 41
    const v2, 0x7f070006

    invoke-virtual {p0, v2}, Lcom/syncmldstmo/smluiNetwork;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    sput-object v2, Lcom/syncmldstmo/smluiNetwork;->edNetworkPW:Landroid/widget/EditText;

    .line 42
    const v2, 0x7f070007

    invoke-virtual {p0, v2}, Lcom/syncmldstmo/smluiNetwork;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    sput-object v2, Lcom/syncmldstmo/smluiNetwork;->edProxyAddr:Landroid/widget/EditText;

    .line 43
    const v2, 0x7f070008

    invoke-virtual {p0, v2}, Lcom/syncmldstmo/smluiNetwork;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    sput-object v2, Lcom/syncmldstmo/smluiNetwork;->edPort:Landroid/widget/EditText;

    .line 45
    const v2, 0x7f070004

    invoke-virtual {p0, v2}, Lcom/syncmldstmo/smluiNetwork;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 46
    .local v1, auth:Landroid/widget/Spinner;
    const v2, 0x7f050002

    const v3, 0x1090008

    invoke-static {p0, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 47
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 48
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 49
    iget-object v2, p0, Lcom/syncmldstmo/smluiNetwork;->networkProfile:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    iget-object v2, v2, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    iget-object v3, p0, Lcom/syncmldstmo/smluiNetwork;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->NetworkConnIndex:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ApnType:I

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 51
    iget-object v2, p0, Lcom/syncmldstmo/smluiNetwork;->networkProfile:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    iget-object v2, v2, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    iget-object v3, p0, Lcom/syncmldstmo/smluiNetwork;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->NetworkConnIndex:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ApnType:I

    if-nez v2, :cond_9f

    .line 53
    sget-object v2, Lcom/syncmldstmo/smluiNetwork;->edNetworkID:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 54
    sget-object v2, Lcom/syncmldstmo/smluiNetwork;->edNetworkPW:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 57
    :cond_9f
    sget-object v2, Lcom/syncmldstmo/smluiNetwork;->edNetworkName:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/syncmldstmo/smluiNetwork;->networkProfile:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    iget-object v4, p0, Lcom/syncmldstmo/smluiNetwork;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget v4, v4, Lcom/syncmldstmo/database/smlDbProfileInfo;->NetworkConnIndex:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->NetProfileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 58
    sget-object v2, Lcom/syncmldstmo/smluiNetwork;->edNetworkAPN:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/syncmldstmo/smluiNetwork;->networkProfile:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    iget-object v4, p0, Lcom/syncmldstmo/smluiNetwork;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget v4, v4, Lcom/syncmldstmo/database/smlDbProfileInfo;->NetworkConnIndex:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->APN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 59
    sget-object v2, Lcom/syncmldstmo/smluiNetwork;->edNetworkID:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/syncmldstmo/smluiNetwork;->networkProfile:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    iget-object v4, p0, Lcom/syncmldstmo/smluiNetwork;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget v4, v4, Lcom/syncmldstmo/database/smlDbProfileInfo;->NetworkConnIndex:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ApnLoginID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 60
    sget-object v2, Lcom/syncmldstmo/smluiNetwork;->edNetworkPW:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/syncmldstmo/smluiNetwork;->networkProfile:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    iget-object v4, p0, Lcom/syncmldstmo/smluiNetwork;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget v4, v4, Lcom/syncmldstmo/database/smlDbProfileInfo;->NetworkConnIndex:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ApnPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    sget-object v2, Lcom/syncmldstmo/smluiNetwork;->edProxyAddr:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/syncmldstmo/smluiNetwork;->networkProfile:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    iget-object v4, p0, Lcom/syncmldstmo/smluiNetwork;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget v4, v4, Lcom/syncmldstmo/database/smlDbProfileInfo;->NetworkConnIndex:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 62
    sget-object v2, Lcom/syncmldstmo/smluiNetwork;->edPort:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/syncmldstmo/smluiNetwork;->networkProfile:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    iget-object v4, p0, Lcom/syncmldstmo/smluiNetwork;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget v4, v4, Lcom/syncmldstmo/database/smlDbProfileInfo;->NetworkConnIndex:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyPort:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 64
    new-instance v2, Lcom/syncmldstmo/smluiNetwork$1;

    invoke-direct {v2, p0}, Lcom/syncmldstmo/smluiNetwork$1;-><init>(Lcom/syncmldstmo/smluiNetwork;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 92
    return-void
.end method
