.class public Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;
.super Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;


# static fields
.field private static O:I

.field private static V:Ljava/lang/String;

.field private static g:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:I

.field private C:I

.field private D:Landroid/widget/LinearLayout;

.field private E:Landroid/widget/RelativeLayout;

.field private F:Landroid/widget/RelativeLayout;

.field private G:Landroid/widget/LinearLayout;

.field private H:Z

.field private I:J

.field private J:Landroid/view/inputmethod/InputMethodManager;

.field private K:Ljava/util/ArrayList;

.field private L:Ljava/util/ArrayList;

.field private M:Z

.field private N:Ljava/lang/String;

.field private P:Landroid/view/Menu;

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Ljava/lang/String;

.field private W:Landroid/widget/ListView;

.field private X:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

.field private Y:Ljava/util/ArrayList;

.field private Z:J

.field public a:[I

.field private aa:I

.field private ab:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

.field private ac:Lcom/sdgtl/mediahub/spr/screen/tu;

.field private ad:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private ae:Landroid/content/BroadcastReceiver;

.field b:Landroid/app/AlertDialog;

.field public c:Landroid/os/Handler;

.field public final d:Landroid/os/Handler;

.field public final e:Landroid/os/Handler;

.field public final f:Landroid/os/Handler;

.field private h:I

.field private i:Lcom/sdgtl/mediahub/spr/screen/ts;

.field private j:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

.field private k:Landroid/widget/ListView;

.field private l:Landroid/widget/GridView;

.field private m:Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/RelativeLayout;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/ImageButton;

.field private s:Landroid/widget/ImageButton;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/EditText;

.field private w:[Ljava/lang/CharSequence;

.field private x:Lcom/sdgtl/mediahub/spr/contentProvider/b;

.field private y:J

.field private z:Lcom/sdgtl/mediahub/spr/common/ek;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->g:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->V:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;-><init>()V

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/ek;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/ek;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->z:Lcom/sdgtl/mediahub/spr/common/ek;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->K:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->L:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->M:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->Q:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->R:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->S:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->T:Z

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->U:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_68

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->Y:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->b:Landroid/app/AlertDialog;

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/tu;->a:Lcom/sdgtl/mediahub/spr/screen/tu;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->ac:Lcom/sdgtl/mediahub/spr/screen/tu;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/tc;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/tc;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->ad:Landroid/widget/AdapterView$OnItemLongClickListener;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/tk;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/tk;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->c:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/tl;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/tl;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->d:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/tm;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/tm;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->e:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/tn;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/tn;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->f:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/to;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/to;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->ae:Landroid/content/BroadcastReceiver;

    return-void

    nop

    :array_68
    .array-data 0x4
        0xbt 0x1t 0xat 0x7ft
        0xct 0x1t 0xat 0x7ft
    .end array-data
.end method

.method static synthetic A(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/common/ek;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->z:Lcom/sdgtl/mediahub/spr/common/ek;

    return-object v0
.end method

.method static synthetic B(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->L:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic C(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->p:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic D(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->v:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic E(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->B:I

    return v0
.end method

.method static synthetic F(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->U:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic G(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->N:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic H(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->X:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    return-object v0
.end method

.method static synthetic I(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->J:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic J(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->S:Z

    return v0
.end method

.method static synthetic K(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->V:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v0, "title"

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->V:Ljava/lang/String;

    :cond_a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->v:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bb

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->V:Ljava/lang/String;

    if-eqz v0, :cond_bb

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->T:Z

    iput v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->B:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->C:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->v:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->U:Ljava/lang/String;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_7e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->D:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->E:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->b(Landroid/view/View;Landroid/view/View;)V

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;-><init>()V

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->B:I

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->a:I

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->C:I

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->b:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->U:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->N:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->d:Ljava/lang/String;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->V:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->f:Ljava/lang/String;

    const-string v1, "02"

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->e:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "search_info"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->x:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v0, 0xb

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->I:J

    :goto_72
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->J:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->v:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :goto_7d
    return-void

    :cond_7e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "product_type_code"

    const-string v2, "02"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sort"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->N:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "keyword"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->U:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "search_type"

    sget-object v2, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->V:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "parent_view"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "product_concluded"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->j:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "search_by"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->E:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_72

    :cond_bb
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->v:Landroid/widget/EditText;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/tj;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/tj;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7d
.end method

.method public static a()Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->g:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    return-object v0
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/screen/ts;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->i:Lcom/sdgtl/mediahub/spr/screen/ts;

    return-object v0
.end method

.method static synthetic a(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    if-eqz p0, :cond_7

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    if-eqz p1, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->aa:I

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;ILjava/lang/CharSequence;Landroid/os/Handler;)V
    .registers 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_f

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->H:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_f
    :goto_f
    return-void

    :cond_10
    const/16 v0, 0xa

    if-ne p1, v0, :cond_18

    invoke-static {p0, p2, p3}, Lcom/sdgtl/mediahub/spr/common/a;->e(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_f

    :cond_18
    if-nez p1, :cond_f

    invoke-static {p0, p2, p3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_f
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->Z:J

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->ab:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->j:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;Lcom/sdgtl/mediahub/spr/common/ek;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->z:Lcom/sdgtl/mediahub/spr/common/ek;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;Z)V
    .registers 6

    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_33

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->F:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_15

    const v0, 0x7f0d004f

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->F:Landroid/widget/RelativeLayout;

    :cond_15
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->E:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    sget v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->O:I

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->k:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_28
    :goto_28
    return-void

    :cond_29
    sget v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->O:I

    if-ne v0, v3, :cond_28

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_28

    :cond_33
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->E:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->F:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_41
    sget v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->O:I

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->k:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_28

    :cond_4b
    sget v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->O:I

    if-ne v0, v3, :cond_28

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_28
.end method

.method static synthetic a(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->V:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->ab:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->V:Ljava/lang/String;

    return-object v0
.end method

.method private b(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    const/16 v1, 0x8

    if-eqz p1, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    if-eqz p2, :cond_d

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->F:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_16
    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->B:I

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->y:J

    return-void
.end method

.method private c()V
    .registers 3

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a()Lcom/sdgtl/mediahub/spr/screen/TvStore;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a()Lcom/sdgtl/mediahub/spr/screen/TvStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->finish()V

    :cond_14
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->finish()V

    :cond_17
    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->C:I

    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->I:J

    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->H:Z

    return v0
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/contentProvider/b;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->x:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    return-object v0
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->Y:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1f

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->aa:I

    if-le v1, v0, :cond_13

    const/4 v0, 0x0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->aa:I

    :cond_13
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->X:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->aa:I

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->setSelectedPosition(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->W:Landroid/widget/ListView;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Landroid/widget/ListView;)V

    :cond_1f
    return-void
.end method

.method private e()V
    .registers 4

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l:Landroid/widget/GridView;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/b/b;->i(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelection(I)V

    :cond_1a
    const v0, 0x7f0a0037

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->setTitle(I)V

    return-void
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->M:Z

    return v0
.end method

.method static synthetic f(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->D:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->E:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->Z:J

    return-wide v0
.end method

.method static synthetic i(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->Y:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic j(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)V
    .registers 1

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->d()V

    return-void
.end method

.method static synthetic k(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->y:J

    return-wide v0
.end method

.method static synthetic l(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->j:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    return-object v0
.end method

.method static synthetic m(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->H:Z

    return-void
.end method

.method static synthetic n(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->K:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic o(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->A:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic p(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->aa:I

    return v0
.end method

.method static synthetic q(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->t:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic r(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->u:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic s(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->k:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic t(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->m:Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    return-object v0
.end method

.method static synthetic u(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->C:I

    return v0
.end method

.method static synthetic v(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->Q:Z

    return v0
.end method

.method static synthetic w(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/view/Menu;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->P:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic x(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->Q:Z

    return-void
.end method

.method static synthetic y(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->h:I

    return v0
.end method

.method static synthetic z(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->I:J

    return-wide v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_42

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_19

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_19

    :goto_18
    return v0

    :cond_19
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_37

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_42

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->p:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->A:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->T:Z

    goto :goto_18

    :cond_37
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_42

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->l(Landroid/content/Context;)V

    :cond_42
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_18
.end method

.method public finish()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->finish()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    invoke-virtual {p0, v2, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->overridePendingTransition(II)V

    :cond_e
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    sparse-switch p1, :sswitch_data_30

    :cond_7
    :goto_7
    return-void

    :sswitch_8
    if-nez p2, :cond_7

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->finish()V

    goto :goto_7

    :sswitch_e
    packed-switch p2, :pswitch_data_3a

    goto :goto_7

    :pswitch_12
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->ac:Lcom/sdgtl/mediahub/spr/screen/tu;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/tu;->b:Lcom/sdgtl/mediahub/spr/screen/tu;

    if-ne v0, v1, :cond_21

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->c()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->q:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_7

    :cond_21
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->ac:Lcom/sdgtl/mediahub/spr/screen/tu;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/tu;->c:Lcom/sdgtl/mediahub/spr/screen/tu;

    if-ne v0, v1, :cond_7

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->c()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->k:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_7

    :sswitch_data_30
    .sparse-switch
        0x3 -> :sswitch_e
        0x7 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_12
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->e()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/16 v5, 0x8

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->g:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    iput v4, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->B:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->C:I

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->H:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->aa:I

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->J:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->x:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->w:[Ljava/lang/CharSequence;

    move v0, v1

    :goto_2c
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a:[I

    array-length v2, v2

    if-lt v0, v2, :cond_1b0

    const v0, 0x7f03005e

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->setContentView(I)V

    const v0, 0x7f0d0052

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->D:Landroid/widget/LinearLayout;

    const v0, 0x7f0d000d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->A:Landroid/widget/TextView;

    const v0, 0x7f0d008d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->n:Landroid/widget/ImageView;

    const v0, 0x7f0d008e

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->o:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v4, :cond_1c0

    const v0, 0x7f0d008c

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->E:Landroid/widget/RelativeLayout;

    const v0, 0x7f0d0142

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->G:Landroid/widget/LinearLayout;

    const v0, 0x7f0d0036

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->t:Landroid/widget/ImageView;

    const v0, 0x7f0d0143

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->u:Landroid/widget/TextView;

    const v0, 0x7f0d004e

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->W:Landroid/widget/ListView;

    new-instance v0, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->Y:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v2}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->X:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->W:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->X:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->W:Landroid/widget/ListView;

    invoke-static {p0, v0, v1, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Landroid/widget/ListView;II)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->W:Landroid/widget/ListView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/td;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/td;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :goto_bf
    const v0, 0x7f0d004d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->k:Landroid/widget/ListView;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ts;

    invoke-direct {v0, p0, p0}, Lcom/sdgtl/mediahub/spr/screen/ts;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->i:Lcom/sdgtl/mediahub/spr/screen/ts;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->i:Lcom/sdgtl/mediahub/spr/screen/ts;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->k:Landroid/widget/ListView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/te;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/te;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->ad:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const v0, 0x7f0d004c

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l:Landroid/widget/GridView;

    new-instance v0, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->m:Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->m:Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l:Landroid/widget/GridView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/tf;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/tf;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->ad:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l:Landroid/widget/GridView;

    invoke-virtual {v0, v5}, Landroid/widget/GridView;->setVisibility(I)V

    const v0, 0x7f0d0094

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->p:Landroid/widget/RelativeLayout;

    const v0, 0x7f0d011e

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->q:Landroid/widget/LinearLayout;

    const v0, 0x7f0d0121

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->r:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->r:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->r:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/tg;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/tg;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->q:Landroid/widget/LinearLayout;

    const v1, 0x7f0d011f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->v:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->v:Landroid/widget/EditText;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/th;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/th;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->q:Landroid/widget/LinearLayout;

    const v1, 0x7f0d0120

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->s:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->s:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/ti;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/ti;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1af

    const-string v1, "show_that_aired_date"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1cd

    const-string v2, "show_that_aired"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-boolean v4, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->S:Z

    iput-boolean v4, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->H:Z

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->i:Lcom/sdgtl/mediahub/spr/screen/ts;

    invoke-virtual {v3, v2}, Lcom/sdgtl/mediahub/spr/screen/ts;->a(Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->A:Landroid/widget/TextView;

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "category_order"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->aa:I

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v4, :cond_1af

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1af
    :goto_1af
    return-void

    :cond_1b0
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->w:[Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a:[I

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2c

    :cond_1c0
    const v0, 0x7f0d0144

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->E:Landroid/widget/RelativeLayout;

    goto/16 :goto_bf

    :cond_1cd
    const-string v1, "product_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->h:I

    const-string v1, "category_order"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->aa:I

    goto :goto_1af
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6

    const/4 v3, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sparse-switch p1, :sswitch_data_52

    :goto_9
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    :goto_d
    return-object v0

    :sswitch_e
    const v1, 0x7f0a0108

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->w:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/tq;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/tq;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_9

    :sswitch_22
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->ab:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    if-nez v0, :cond_28

    const/4 v0, 0x0

    goto :goto_d

    :cond_28
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->ab:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    const v2, 0x7f0a00d0

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v3

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/tr;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/tr;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->b:Landroid/app/AlertDialog;

    goto :goto_9

    :sswitch_data_52
    .sparse-switch
        0x1 -> :sswitch_e
        0xb -> :sswitch_22
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onDestroy()V

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->g:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8

    const/4 v5, 0x3

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_e4

    :goto_d
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_11
    :goto_11
    return v0

    :sswitch_12
    invoke-static {}, Lcom/sdgtl/mediahub/spr/aq;->a()Lcom/sdgtl/mediahub/spr/ar;

    move-result-object v1

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->a:Lcom/sdgtl/mediahub/spr/ar;

    if-eq v1, v2, :cond_11

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->a:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;)V

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->searchClose(Z)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->finish()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->y(Landroid/content/Context;)V

    invoke-virtual {p0, v3, v3}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->overridePendingTransition(II)V

    goto :goto_11

    :sswitch_2c
    sget v1, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->O:I

    if-nez v1, :cond_5d

    sput v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->O:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->k:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->m:Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->notifyDataSetChanged()V

    :cond_51
    :goto_51
    const-string v0, "key_view_mode"

    sget v1, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->O:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_5d
    sput v3, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->O:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->k:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->i:Lcom/sdgtl/mediahub/spr/screen/ts;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/ts;->notifyDataSetChanged()V

    goto :goto_51

    :sswitch_79
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->v:Landroid/widget/EditText;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/tp;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/tp;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_d

    :sswitch_96
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->w(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a7

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/tu;->c:Lcom/sdgtl/mediahub/spr/screen/tu;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->ac:Lcom/sdgtl/mediahub/spr/screen/tu;

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v4, v5}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto/16 :goto_d

    :cond_a7
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->c()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->k:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v4}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto/16 :goto_d

    :sswitch_b1
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c2

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/tu;->b:Lcom/sdgtl/mediahub/spr/screen/tu;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->ac:Lcom/sdgtl/mediahub/spr/screen/tu;

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v4, v5}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto/16 :goto_d

    :cond_c2
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->c()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->q:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v4}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto/16 :goto_d

    :sswitch_cc
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->y(Landroid/content/Context;)V

    goto/16 :goto_d

    :sswitch_d1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "help_screen_id"

    const-string v2, "0130"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->o:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto/16 :goto_d

    :sswitch_data_e4
    .sparse-switch
        0x102002c -> :sswitch_12
        0x7f0d016a -> :sswitch_d1
        0x7f0d0170 -> :sswitch_b1
        0x7f0d0171 -> :sswitch_cc
        0x7f0d0172 -> :sswitch_79
        0x7f0d0174 -> :sswitch_2c
        0x7f0d0175 -> :sswitch_96
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->M:Z

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onPause()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->W:Landroid/widget/ListView;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Landroid/widget/ListView;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->ae:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onPostCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->removeDialog(I)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->removeDialog(I)V

    :cond_e
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->P:Landroid/view/Menu;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->P:Landroid/view/Menu;

    const v3, 0x7f0d0174

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->P:Landroid/view/Menu;

    const v4, 0x7f0d0172

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->P:Landroid/view/Menu;

    const v5, 0x7f0d0171

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->P:Landroid/view/Menu;

    const v6, 0x7f0d016a

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->P:Landroid/view/Menu;

    const v7, 0x7f0d0170

    invoke-interface {v0, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->P:Landroid/view/Menu;

    const v8, 0x7f0d0175

    invoke-interface {v0, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getVisibility()I

    move-result v0

    const/16 v9, 0x8

    if-ne v0, v9, :cond_87

    const v0, 0x7f0a0057

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_4a
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->H:Z

    if-eqz v0, :cond_8e

    move v0, v1

    :goto_4f
    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->Q:Z

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->T:Z

    if-eqz v0, :cond_90

    move v0, v2

    :goto_56
    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->R:Z

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_92

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v8, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_67
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->S:Z

    if-eqz v0, :cond_6e

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_6e
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->Q:Z

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->R:Z

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->R:Z

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->R:Z

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_87
    const v0, 0x7f0a0056

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_4a

    :cond_8e
    move v0, v2

    goto :goto_4f

    :cond_90
    move v0, v1

    goto :goto_56

    :cond_92
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->Q:Z

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->R:Z

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->R:Z

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->R:Z

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_67
.end method

.method protected onResume()V
    .registers 7

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onResume()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->g:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {p0, p0, v0, v3}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->setActionBar(Landroid/app/Activity;Lcom/sdgtl/mediahub/spr/ar;Z)V

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->M:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_IMAGE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->ae:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->x:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/contentProvider/b;)Z

    move-result v0

    if-nez v0, :cond_2b

    :goto_2a
    return-void

    :cond_2b
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v5, :cond_55

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/fl;->b()Lcom/sdgtl/mediahub/spr/common/ej;

    move-result-object v0

    if-eqz v0, :cond_9a

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->Y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->Y:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ej;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->x:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->d()V

    :cond_55
    :goto_55
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->H:Z

    if-nez v0, :cond_7c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->D:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->E:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->b(Landroid/view/View;Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->T:Z

    if-eqz v0, :cond_66

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->T:Z

    :cond_66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "product_id"

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->x:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x9

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->y:J

    :cond_7c
    const-string v0, "key_view_mode"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_sort_by"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->N:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->N:Ljava/lang/String;

    if-nez v1, :cond_92

    const-string v1, "date"

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->N:Ljava/lang/String;

    :cond_92
    if-nez v0, :cond_b7

    sput v3, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->O:I

    :cond_96
    :goto_96
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->e()V

    goto :goto_2a

    :cond_9a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->D:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->E:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->b(Landroid/view/View;Landroid/view/View;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "product_Type_Code"

    const-string v2, "02"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->x:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v1, 0x7

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->Z:J

    goto :goto_55

    :cond_b7
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d8

    sput v5, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->O:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->k:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_96

    :cond_d8
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    sput v3, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->O:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->k:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_96
.end method

.method protected onStart()V
    .registers 1

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .registers 1

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onStop()V

    return-void
.end method
