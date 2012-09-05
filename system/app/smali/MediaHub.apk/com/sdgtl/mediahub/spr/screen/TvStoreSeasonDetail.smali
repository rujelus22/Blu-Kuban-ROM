.class public Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;
.super Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;


# static fields
.field private static S:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

.field private static aa:Ljava/lang/String;


# instance fields
.field private A:Lcom/sdgtl/mediahub/spr/screen/su;

.field private B:Ljava/util/ArrayList;

.field private C:Ljava/util/ArrayList;

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:I

.field private H:Landroid/widget/ListView;

.field private I:Lcom/sdgtl/mediahub/spr/screen/ss;

.field private J:Landroid/widget/ListView;

.field private K:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

.field private L:Landroid/widget/LinearLayout;

.field private M:Landroid/widget/TextView;

.field private N:I

.field private O:Ljava/util/ArrayList;

.field private P:J

.field private Q:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

.field private R:Ljava/lang/String;

.field private T:I

.field private U:Landroid/widget/RelativeLayout;

.field private V:Landroid/widget/LinearLayout;

.field private W:Landroid/widget/ImageButton;

.field private X:Landroid/widget/ImageButton;

.field private Y:Landroid/widget/EditText;

.field private Z:Ljava/lang/String;

.field a:Landroid/app/AlertDialog;

.field private ab:Z

.field private ac:Landroid/view/inputmethod/InputMethodManager;

.field private ad:[Ljava/lang/CharSequence;

.field private ae:[I

.field private af:Landroid/view/Menu;

.field private ag:Z

.field private ah:Z

.field private ai:Lcom/sdgtl/mediahub/spr/screen/tb;

.field private aj:Landroid/content/BroadcastReceiver;

.field public final b:Landroid/os/Handler;

.field public final c:Landroid/os/Handler;

.field public d:Landroid/os/Handler;

.field public final e:Landroid/os/Handler;

.field public final f:Landroid/os/Handler;

.field public final g:Landroid/os/Handler;

.field private h:J

.field private i:Lcom/sdgtl/mediahub/spr/contentProvider/b;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/Button;

.field private w:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

.field private x:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

.field private y:I

.field private z:Landroid/widget/ExpandableListView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->S:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->aa:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;-><init>()V

    iput v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->y:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->B:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->C:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->D:Z

    iput v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->G:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->O:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a:Landroid/app/AlertDialog;

    iput-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->R:Ljava/lang/String;

    iput v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->T:I

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ab:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_6c

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ae:[I

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ag:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ah:Z

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/tb;->a:Lcom/sdgtl/mediahub/spr/screen/tb;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ai:Lcom/sdgtl/mediahub/spr/screen/tb;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ry;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/ry;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->b:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/sj;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/sj;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->c:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/sl;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/sl;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->d:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/sm;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/sm;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->e:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/sn;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/sn;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->f:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/so;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/so;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->g:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/sp;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/sp;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->aj:Landroid/content/BroadcastReceiver;

    return-void

    :array_6c
    .array-data 0x4
        0xbt 0x1t 0xat 0x7ft
        0xct 0x1t 0xat 0x7ft
    .end array-data
.end method

.method static synthetic A(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V
    .registers 6

    const/4 v4, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->aa:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, "title"

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->aa:Ljava/lang/String;

    :cond_9
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->Y:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->aa:Ljava/lang/String;

    if-eqz v0, :cond_73

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ab:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->Y:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->Z:Ljava/lang/String;

    const-string v0, "key_sort_by"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_38

    const-string v0, "date"

    :cond_38
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "product_type_code"

    const-string v3, "02"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sort"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "keyword"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->Z:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "search_type"

    sget-object v2, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->aa:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "parent_view"

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "search_by"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->E:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ac:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->Y:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :goto_72
    return-void

    :cond_73
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->Y:Landroid/widget/EditText;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/sh;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/sh;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_72
.end method

.method static synthetic B(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->x:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    return-object v0
.end method

.method static synthetic C(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->T:I

    return v0
.end method

.method static synthetic D(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->B:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic E(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V
    .registers 1

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->c()V

    return-void
.end method

.method static synthetic F(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Landroid/widget/ExpandableListView;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->z:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->w:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    return-object v0
.end method

.method public static a()Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->S:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

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

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->T:I

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;ILjava/lang/CharSequence;Landroid/os/Handler;)V
    .registers 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_f

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->E:Z

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

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->P:J

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->Q:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->x:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->w:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->R:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->C:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->aa:Ljava/lang/String;

    return-void
.end method

.method private a(Z)V
    .registers 13

    const/4 v10, 0x2

    const/16 v9, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->w:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v5, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->l:Landroid/widget/ImageView;

    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->s:Ljava/lang/String;

    invoke-static {v0, v1, v10}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_24

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->w:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->i:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0, v7}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    :cond_24
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->q:Landroid/widget/TextView;

    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v7, :cond_4d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->M:Landroid/widget/TextView;

    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->N:I

    if-gez v0, :cond_4a

    move v1, v6

    :goto_3d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_e3

    move v0, v6

    :goto_46
    if-eqz v0, :cond_4d

    iput v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->N:I

    :cond_4a
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->f()V

    :cond_4d
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_87

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/el;

    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->y:Ljava/lang/String;

    iget-object v2, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->x:Ljava/lang/String;

    iget-object v3, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->z:Ljava/lang/String;

    iget-object v4, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->A:Ljava/lang/String;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->p:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/common/el;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->B:Ljava/util/ArrayList;

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/da;

    aget-object v3, v8, v6

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sdgtl/mediahub/spr/common/ct;

    invoke-direct {v4, v0}, Lcom/sdgtl/mediahub/spr/common/ct;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3, v4}, Lcom/sdgtl/mediahub/spr/common/da;-><init>(Ljava/lang/Object;Lcom/sdgtl/mediahub/spr/common/ct;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_87
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->C:Ljava/util/ArrayList;

    if-eqz v1, :cond_d7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d7

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_cd

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->F:Z

    if-eqz v0, :cond_109

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a008c

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_c3
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->B:Ljava/util/ArrayList;

    new-instance v3, Lcom/sdgtl/mediahub/spr/common/da;

    invoke-direct {v3, v0, v10}, Lcom/sdgtl/mediahub/spr/common/da;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_cd
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_132

    :cond_d7
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v7, :cond_143

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->I:Lcom/sdgtl/mediahub/spr/screen/ss;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/ss;->notifyDataSetChanged()V

    :goto_e2
    return-void

    :cond_e3
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->O:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->a:Ljava/lang/String;

    if-eqz v0, :cond_104

    iget v2, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->d:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->O:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_104

    move v0, v7

    goto/16 :goto_46

    :cond_104
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3d

    :cond_109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a008b

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c3

    :cond_132
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->B:Ljava/util/ArrayList;

    new-instance v3, Lcom/sdgtl/mediahub/spr/common/da;

    invoke-direct {v3, v0, v7}, Lcom/sdgtl/mediahub/spr/common/da;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d1

    :cond_143
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->A:Lcom/sdgtl/mediahub/spr/screen/su;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/su;->notifyDataSetChanged()V

    if-eqz p1, :cond_14f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->z:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v6}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    :cond_14f
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ab:Z

    if-nez v0, :cond_169

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->U:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->V:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->z:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->requestFocus()Z

    goto/16 :goto_e2

    :cond_169
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->U:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->V:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_e2
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->R:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    if-eqz p0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    if-eqz p1, :cond_d

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->G:I

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->h:J

    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->y:I

    return v0
.end method

.method private c()V
    .registers 3

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->finish()V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a()Lcom/sdgtl/mediahub/spr/screen/TvStore;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a()Lcom/sdgtl/mediahub/spr/screen/TvStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->finish()V

    :cond_17
    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a()Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a()Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->finish()V

    :cond_24
    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->y:I

    return-void
.end method

.method private d()V
    .registers 8

    const v6, 0x7f0d003d

    const v2, 0x7f0d0036

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const v0, 0x7f03005c

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->setContentView(I)V

    const v0, 0x7f0d0052

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->k:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v3, :cond_e1

    const v0, 0x7f0d0138

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->L:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->l:Landroid/widget/ImageView;

    invoke-virtual {p0, v6}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->q:Landroid/widget/TextView;

    const v0, 0x7f0d0143

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->M:Landroid/widget/TextView;

    const v0, 0x7f0d0141

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->v:Landroid/widget/Button;

    const v0, 0x7f0d013f

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->t:Landroid/widget/TextView;

    const v0, 0x7f0d0140

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->u:Landroid/widget/TextView;

    const v0, 0x7f0d004d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->H:Landroid/widget/ListView;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ss;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->B:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1}, Lcom/sdgtl/mediahub/spr/screen/ss;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->I:Lcom/sdgtl/mediahub/spr/screen/ss;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->H:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->I:Lcom/sdgtl/mediahub/spr/screen/ss;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->H:Landroid/widget/ListView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/se;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/se;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->H:Landroid/widget/ListView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/sf;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/sf;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const v0, 0x7f0d004e

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->J:Landroid/widget/ListView;

    new-instance v0, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->O:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->K:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->J:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->K:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->J:Landroid/widget/ListView;

    invoke-static {p0, v0, v5, v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Landroid/widget/ListView;II)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->J:Landroid/widget/ListView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/sg;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/sg;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_c0
    :goto_c0
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->w:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    if-eqz v0, :cond_cf

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->w:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->x:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    :cond_cf
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->v:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->v:Landroid/widget/Button;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/sb;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/sb;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_e1
    const v0, 0x7f0d013e

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->j:Landroid/widget/LinearLayout;

    const v0, 0x7f0d000d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->r:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ab:Z

    if-eqz v0, :cond_11b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->Y:Landroid/widget/EditText;

    if-eqz v0, :cond_11b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->Y:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_11b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->Y:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->Z:Ljava/lang/String;

    :cond_11b
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_227

    const v0, 0x7f0d003e

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->m:Landroid/widget/ImageView;

    const v0, 0x7f0d003f

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->n:Landroid/widget/ImageView;

    const v0, 0x7f0d0040

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->o:Landroid/widget/ImageView;

    const v0, 0x7f0d0037

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->p:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->l:Landroid/widget/ImageView;

    invoke-virtual {p0, v6}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->q:Landroid/widget/TextView;

    const v0, 0x7f0d003b

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->s:Landroid/widget/TextView;

    const v0, 0x7f0d013f

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->t:Landroid/widget/TextView;

    const v0, 0x7f0d0140

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->u:Landroid/widget/TextView;

    const v0, 0x7f0d0141

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->v:Landroid/widget/Button;

    const v0, 0x7f0d004b

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->z:Landroid/widget/ExpandableListView;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/su;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->B:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1}, Lcom/sdgtl/mediahub/spr/screen/su;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->A:Lcom/sdgtl/mediahub/spr/screen/su;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->z:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->A:Lcom/sdgtl/mediahub/spr/screen/su;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->z:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v4}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->z:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->z:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/sd;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/sd;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    :goto_1b8
    const v0, 0x7f0d0094

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->U:Landroid/widget/RelativeLayout;

    const v0, 0x7f0d011e

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->V:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->U:Landroid/widget/RelativeLayout;

    const v1, 0x7f0d0121

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->W:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->W:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->W:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/sr;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/sr;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d011f

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->Y:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->Y:Landroid/widget/EditText;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/rz;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/rz;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v0, 0x7f0d0120

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->X:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->X:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/sa;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/sa;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ab:Z

    if-eqz v0, :cond_c0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->Z:Ljava/lang/String;

    if-eqz v0, :cond_c0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->Y:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iput-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->Z:Ljava/lang/String;

    goto/16 :goto_c0

    :cond_227
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03005d

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0d003e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->m:Landroid/widget/ImageView;

    const v1, 0x7f0d003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->n:Landroid/widget/ImageView;

    const v1, 0x7f0d0040

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->o:Landroid/widget/ImageView;

    const v1, 0x7f0d0037

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->q:Landroid/widget/TextView;

    const v1, 0x7f0d003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->s:Landroid/widget/TextView;

    const v1, 0x7f0d013f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->t:Landroid/widget/TextView;

    const v1, 0x7f0d0140

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->u:Landroid/widget/TextView;

    const v1, 0x7f0d0141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->v:Landroid/widget/Button;

    const v1, 0x7f0d004b

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->z:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/su;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->B:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p0, v2}, Lcom/sdgtl/mediahub/spr/screen/su;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->A:Lcom/sdgtl/mediahub/spr/screen/su;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->z:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0, v4, v5}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->z:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->A:Lcom/sdgtl/mediahub/spr/screen/su;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->z:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v4}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->z:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->z:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/sc;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/sc;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    goto/16 :goto_1b8
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->E:Z

    return v0
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Lcom/sdgtl/mediahub/spr/contentProvider/b;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->i:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    return-object v0
.end method

.method private e()V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->I:Lcom/sdgtl/mediahub/spr/screen/ss;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/ss;->notifyDataSetChanged()V

    :cond_d
    :goto_d
    const v0, 0x7f0a0037

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->setTitle(I)V

    return-void

    :cond_14
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_22

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->z:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v0

    :cond_22
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->d()V

    iget-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->E:Z

    if-eqz v1, :cond_3d

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a(Z)V

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->g()V

    :goto_2f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->V:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->Y:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_d

    :cond_3d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->k:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->j:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->b(Landroid/view/View;Landroid/view/View;)V

    goto :goto_2f
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->O:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1f

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->N:I

    if-le v1, v0, :cond_13

    const/4 v0, 0x0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->N:I

    :cond_13
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->K:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->N:I

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->setSelectedPosition(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->J:Landroid/widget/ListView;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Landroid/widget/ListView;)V

    :cond_1f
    return-void
.end method

.method static synthetic f(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->D:Z

    return v0
.end method

.method static synthetic g(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->k:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private g()V
    .registers 11

    const/4 v1, 0x1

    const/16 v9, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->w:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->v:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->w:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget-wide v5, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->a:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_16c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->w:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_1ce

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->w:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->w:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->c:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ce

    move v0, v1

    :goto_46
    if-nez v0, :cond_159

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->w:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_159

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->w:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->c:Ljava/lang/String;

    const-string v5, "03"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->v:Landroid/widget/Button;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0a008e

    invoke-virtual {p0, v6}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0a0062

    invoke-virtual {p0, v6}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->x:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v6, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->D:Ljava/util/ArrayList;

    const-string v7, "01"

    invoke-static {p0, v6, v7}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_a0
    :goto_a0
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->w:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->n:Ljava/lang/String;

    const-string v5, "Y"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ac

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_b3
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->t:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0a008b

    invoke-virtual {p0, v5}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_158

    iget-object v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->l:Ljava/lang/String;

    if-eqz v0, :cond_1b3

    iget-object v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->l:Ljava/lang/String;

    const-string v4, "Y"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_fb
    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->G:I

    if-eq v0, v1, :cond_104

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->G:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1ba

    :cond_104
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_109
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->r:Landroid/widget/TextView;

    iget-object v1, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->v:Ljava/lang/String;

    if-eqz v0, :cond_1c1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->p:Landroid/widget/ImageView;

    iget-object v1, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->v:Ljava/lang/String;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->j(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_11f
    iget-object v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->k:Ljava/lang/String;

    if-eqz v0, :cond_1c8

    iget-object v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->k:Ljava/lang/String;

    const-string v1, "000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c8

    iget-object v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1c8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->s:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a0078

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->k:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_158
    :goto_158
    return-void

    :cond_159
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->v:Landroid/widget/Button;

    const v5, 0x7f0a008d

    invoke-virtual {p0, v5}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->v:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_a0

    :cond_16c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->w:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->D:Ljava/util/ArrayList;

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(ILjava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_17f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->v:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_a0

    :cond_17f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->v:Landroid/widget/Button;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0a0066

    invoke-virtual {p0, v6}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->x:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v6, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->D:Ljava/util/ArrayList;

    invoke-static {p0, v6, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a0

    :cond_1ac
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_b3

    :cond_1b3
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_fb

    :cond_1ba
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_109

    :cond_1c1
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_11f

    :cond_1c8
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_158

    :cond_1ce
    move v0, v2

    goto/16 :goto_46
.end method

.method static synthetic h(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->L:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic i(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->j:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic j(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->P:J

    return-wide v0
.end method

.method static synthetic k(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->O:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic l(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V
    .registers 1

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->f()V

    return-void
.end method

.method static synthetic m(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->h:J

    return-wide v0
.end method

.method static synthetic n(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V
    .registers 1

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->g()V

    return-void
.end method

.method static synthetic o(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->E:Z

    return-void
.end method

.method static synthetic p(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ag:Z

    return v0
.end method

.method static synthetic q(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Landroid/view/Menu;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->af:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic r(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ag:Z

    return-void
.end method

.method static synthetic s(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a(Z)V

    return-void
.end method

.method static synthetic t(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->l:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic u(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->K:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    return-object v0
.end method

.method static synthetic v(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Lcom/sdgtl/mediahub/spr/screen/ss;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->I:Lcom/sdgtl/mediahub/spr/screen/ss;

    return-object v0
.end method

.method static synthetic w(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->Q:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    return-object v0
.end method

.method static synthetic x(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->G:I

    return v0
.end method

.method static synthetic y(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->Y:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic z(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ac:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->E:Z

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_58

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_1b

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1b

    :goto_1a
    return v0

    :cond_1b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_47

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_58

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->V:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_58

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->U:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->V:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->z:Landroid/widget/ExpandableListView;

    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->requestFocus()Z

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ab:Z

    goto :goto_1a

    :cond_47
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_58

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_58

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->l(Landroid/content/Context;)V

    :cond_58
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1a
.end method

.method public finish()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->finish()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    invoke-virtual {p0, v2, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->overridePendingTransition(II)V

    :cond_e
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 15

    const/16 v10, 0x9

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_17c

    :cond_b
    :goto_b
    :pswitch_b
    return-void

    :pswitch_c
    packed-switch p2, :pswitch_data_18a

    :goto_f
    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/tb;->a:Lcom/sdgtl/mediahub/spr/screen/tb;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ai:Lcom/sdgtl/mediahub/spr/screen/tb;

    goto :goto_b

    :pswitch_14
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ai:Lcom/sdgtl/mediahub/spr/screen/tb;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/tb;->c:Lcom/sdgtl/mediahub/spr/screen/tb;

    if-ne v0, v1, :cond_25

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->E:Z

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->c()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->k:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v5}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_f

    :cond_25
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ai:Lcom/sdgtl/mediahub/spr/screen/tb;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/tb;->b:Lcom/sdgtl/mediahub/spr/screen/tb;

    if-ne v0, v1, :cond_36

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->E:Z

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->c()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->q:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v5}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_f

    :cond_36
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->k:Landroid/widget/LinearLayout;

    invoke-static {v0, v5}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->b(Landroid/view/View;Landroid/view/View;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "product_id"

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->i:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v10, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->h:J

    goto :goto_f

    :pswitch_50
    if-eqz p3, :cond_179

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    move-object v4, v0

    :goto_57
    const/4 v0, 0x4

    if-eq p2, v0, :cond_81

    if-eqz v4, :cond_81

    const-string v0, "products_purchase_info"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move v2, v3

    :goto_68
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->w:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->D:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v2, v1, :cond_c3

    :goto_74
    move v2, v3

    :goto_75
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->w:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->e:Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v2, v1, :cond_e7

    :cond_81
    packed-switch p2, :pswitch_data_190

    goto :goto_b

    :pswitch_85
    if-ne p2, v9, :cond_138

    const v0, 0x7f0a0090

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_95
    :pswitch_95
    if-nez v4, :cond_148

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->k:Landroid/widget/LinearLayout;

    invoke-static {v0, v5}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->b(Landroid/view/View;Landroid/view/View;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "product_id"

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->i:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v10, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->h:J

    :goto_b0
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->v:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->v:Landroid/widget/Button;

    const v1, 0x7f0a008d

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    :cond_c3
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->w:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->D:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    iget-object v6, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->g:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e3

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->w:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->D:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_74

    :cond_e3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_68

    :cond_e7
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->w:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->e:Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->a:I

    const-string v6, "01"

    invoke-static {v1, v6}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_133

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->w:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->e:Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->a:I

    const-string v6, "02"

    invoke-static {v1, v6}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_133

    new-instance v6, Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->w:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->e:Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget-object v7, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->w:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v7, v7, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v7, v7, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->e:Ljava/lang/String;

    iget-object v8, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->w:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v8, v8, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget v8, v8, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->e:I

    invoke-direct {v6, v1, v0, v7, v8}, Lcom/sdgtl/mediahub/spr/common/di;-><init>(Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;Ljava/lang/String;I)V

    invoke-static {p0, v6, v9}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/di;Z)V

    :cond_133
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_75

    :cond_138
    const v0, 0x7f0a0091

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_95

    :cond_148
    const-string v0, "products_purchase_info"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->w:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget-wide v4, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->c:J

    iput-wide v4, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->a:J

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->w:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget-wide v4, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->d:J

    iput-wide v4, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->b:J

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->w:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->g:Ljava/lang/String;

    iput-object v2, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->w:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->o:Ljava/lang/String;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->d:Ljava/lang/String;

    goto/16 :goto_b0

    :pswitch_172
    if-nez p2, :cond_b

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->finish()V

    goto/16 :goto_b

    :cond_179
    move-object v4, v5

    goto/16 :goto_57

    :pswitch_data_17c
    .packed-switch 0x3
        :pswitch_c
        :pswitch_50
        :pswitch_b
        :pswitch_b
        :pswitch_172
    .end packed-switch

    :pswitch_data_18a
    .packed-switch 0x1
        :pswitch_14
    .end packed-switch

    :pswitch_data_190
    .packed-switch 0x1
        :pswitch_85
        :pswitch_85
        :pswitch_95
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->e()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->S:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->i:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->N:I

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->F:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->E:Z

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_29

    const-string v2, "product_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->y:I

    const-string v2, "category_order"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->N:I

    :cond_29
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ac:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ae:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ad:[Ljava/lang/CharSequence;

    move v0, v1

    :goto_3b
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ae:[I

    array-length v1, v1

    if-lt v0, v1, :cond_4e

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->d()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4d

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->e()V

    :cond_4d
    return-void

    :cond_4e
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ad:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ae:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3b
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
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->Q:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    if-nez v0, :cond_14

    const/4 v0, 0x0

    goto :goto_d

    :cond_14
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->Q:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    const v2, 0x7f0a00d0

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v3

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/si;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/si;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a:Landroid/app/AlertDialog;

    goto :goto_9

    :sswitch_3e
    const v1, 0x7f0a0108

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ad:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/sk;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/sk;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_9

    :sswitch_data_52
    .sparse-switch
        0x1 -> :sswitch_3e
        0xb -> :sswitch_e
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->S:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7

    const/4 v4, 0x3

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_a4

    :cond_b
    :goto_b
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_f
    :goto_f
    return v0

    :sswitch_10
    invoke-static {}, Lcom/sdgtl/mediahub/spr/aq;->a()Lcom/sdgtl/mediahub/spr/ar;

    move-result-object v1

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->a:Lcom/sdgtl/mediahub/spr/ar;

    if-eq v1, v2, :cond_f

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->a:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;)V

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->searchClose(Z)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->finish()V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a()Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a()Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->finish()V

    :cond_30
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->y(Landroid/content/Context;)V

    invoke-virtual {p0, v3, v3}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->overridePendingTransition(II)V

    goto :goto_f

    :sswitch_37
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->w(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_47

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/tb;->c:Lcom/sdgtl/mediahub/spr/screen/tb;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ai:Lcom/sdgtl/mediahub/spr/screen/tb;

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v2, v4}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto :goto_b

    :cond_47
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->c()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->k:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_b

    :sswitch_50
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_60

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/tb;->b:Lcom/sdgtl/mediahub/spr/screen/tb;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ai:Lcom/sdgtl/mediahub/spr/screen/tb;

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v2, v4}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto :goto_b

    :cond_60
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->c()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->q:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_b

    :sswitch_69
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->y(Landroid/content/Context;)V

    goto :goto_b

    :sswitch_6d
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "help_screen_id"

    const-string v2, "0130"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->o:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_b

    :sswitch_7f
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->U:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->V:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->r:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->Y:Landroid/widget/EditText;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/sq;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/sq;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_b

    :sswitch_data_a4
    .sparse-switch
        0x102002c -> :sswitch_10
        0x7f0d016a -> :sswitch_6d
        0x7f0d0170 -> :sswitch_50
        0x7f0d0171 -> :sswitch_69
        0x7f0d0172 -> :sswitch_7f
        0x7f0d0175 -> :sswitch_37
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->D:Z

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onPause()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->J:Landroid/widget/ListView;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Landroid/widget/ListView;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->aj:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onPostCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->removeDialog(I)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->removeDialog(I)V

    :cond_e
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->af:Landroid/view/Menu;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->af:Landroid/view/Menu;

    const v3, 0x7f0d0172

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->af:Landroid/view/Menu;

    const v4, 0x7f0d0170

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->af:Landroid/view/Menu;

    const v5, 0x7f0d0171

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->af:Landroid/view/Menu;

    const v6, 0x7f0d016a

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->af:Landroid/view/Menu;

    const v7, 0x7f0d0175

    invoke-interface {v0, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ab:Z

    if-eqz v0, :cond_64

    move v0, v1

    :goto_36
    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ah:Z

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ah:Z

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ah:Z

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ah:Z

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->E:Z

    if-eqz v0, :cond_66

    move v0, v2

    :goto_4c
    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ag:Z

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ag:Z

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_68

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_5f
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_64
    move v0, v2

    goto :goto_36

    :cond_66
    move v0, v1

    goto :goto_4c

    :cond_68
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ah:Z

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ah:Z

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5f
.end method

.method protected onResume()V
    .registers 7

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onResume()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->h:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {p0, p0, v0, v3}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->setActionBar(Landroid/app/Activity;Lcom/sdgtl/mediahub/spr/ar;Z)V

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->D:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_IMAGE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->aj:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->i:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/contentProvider/b;)Z

    move-result v0

    if-nez v0, :cond_2b

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v4, :cond_55

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/fl;->b()Lcom/sdgtl/mediahub/spr/common/ej;

    move-result-object v0

    if-eqz v0, :cond_9f

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->O:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->O:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ej;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->O:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->i:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->f()V

    :cond_55
    :goto_55
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->E:Z

    if-nez v0, :cond_80

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v4, :cond_bc

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->k:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->L:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->b(Landroid/view/View;Landroid/view/View;)V

    :goto_66
    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->y:I

    if-eqz v0, :cond_80

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "product_id"

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->i:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x9

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->h:J

    :cond_80
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->ab:Z

    if-nez v0, :cond_2a

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->U:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->V:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->z:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->requestFocus()Z

    goto :goto_2a

    :cond_9f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->k:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->L:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->b(Landroid/view/View;Landroid/view/View;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "product_Type_Code"

    const-string v2, "02"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->i:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v1, 0x7

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->P:J

    goto :goto_55

    :cond_bc
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->k:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->j:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->b(Landroid/view/View;Landroid/view/View;)V

    goto :goto_66
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
