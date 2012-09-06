.class public Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;
.super Landroid/support/v4/app/f;
.source "SourceFile"


# static fields
.field private static P:Lcom/google/commerce/wireless/topiary/D;

.field private static final ac:Lcom/google/commerce/wireless/topiary/S;

.field private static final ad:Lcom/google/commerce/wireless/topiary/S;


# instance fields
.field protected N:Lcom/google/android/apps/common/offerslib/d;

.field protected O:Lcom/google/commerce/wireless/topiary/HybridWebViewControl;

.field private final Q:Lcom/google/android/apps/common/offerslib/i;

.field private R:Lcom/google/commerce/wireless/topiary/HybridWebView;

.field private S:Lcom/google/android/apps/common/offerslib/c;

.field private T:Ljava/lang/String;

.field private U:Lcom/google/android/apps/common/offerslib/a;

.field private V:Landroid/accounts/Account;

.field private W:Lcom/google/android/apps/common/offerslib/u;

.field private X:Ljava/lang/String;

.field private Y:Landroid/widget/RelativeLayout;

.field private Z:Landroid/view/View;

.field private aa:Landroid/os/Handler;

.field private ab:I

.field private ae:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x1

    .line 87
    new-instance v0, Lcom/google/commerce/wireless/topiary/S;

    const-string v1, "Google Checkout"

    const-string v2, "https://checkout.google.com"

    sget-object v5, Lcom/google/commerce/wireless/topiary/U;->b:Lcom/google/commerce/wireless/topiary/U;

    new-instance v6, Ljava/util/ArrayList;

    new-array v4, v3, [Lcom/google/commerce/wireless/topiary/T;

    new-instance v7, Lcom/google/commerce/wireless/topiary/T;

    const-string v8, "https://checkout.google.com/"

    const-string v9, "FSS"

    const/16 v10, 0x4b0

    invoke-direct {v7, v8, v9, v10}, Lcom/google/commerce/wireless/topiary/T;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v7, v4, v11

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/commerce/wireless/topiary/S;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLcom/google/commerce/wireless/topiary/U;Ljava/util/List;)V

    sput-object v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->ac:Lcom/google/commerce/wireless/topiary/S;

    .line 96
    new-instance v0, Lcom/google/commerce/wireless/topiary/S;

    const-string v1, "Google Checkout"

    const-string v2, "https://checkout.google.com"

    sget-object v5, Lcom/google/commerce/wireless/topiary/U;->b:Lcom/google/commerce/wireless/topiary/U;

    new-instance v6, Ljava/util/ArrayList;

    new-array v4, v3, [Lcom/google/commerce/wireless/topiary/T;

    new-instance v7, Lcom/google/commerce/wireless/topiary/T;

    const-string v8, "https://checkout.google.com/"

    const-string v9, "SSID"

    const v10, 0x127500

    invoke-direct {v7, v8, v9, v10}, Lcom/google/commerce/wireless/topiary/T;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v7, v4, v11

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/commerce/wireless/topiary/S;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLcom/google/commerce/wireless/topiary/U;Ljava/util/List;)V

    sput-object v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->ad:Lcom/google/commerce/wireless/topiary/S;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/f;-><init>()V

    .line 70
    new-instance v0, Lcom/google/android/apps/common/offerslib/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/common/offerslib/i;-><init>(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;Lcom/google/android/apps/common/offerslib/f;)V

    iput-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->Q:Lcom/google/android/apps/common/offerslib/i;

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->aa:Landroid/os/Handler;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->ab:I

    .line 992
    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 50
    iput p1, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->ab:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->aa:Landroid/os/Handler;

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1072
    packed-switch p1, :pswitch_data_32

    .line 1088
    :goto_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1089
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->U:Lcom/google/android/apps/common/offerslib/a;

    invoke-virtual {v0}, Lcom/google/android/apps/common/offerslib/a;->d()Lcom/google/android/apps/common/offerslib/b;

    move-result-object v0

    iget-object p2, v0, Lcom/google/android/apps/common/offerslib/b;->c:Ljava/lang/String;

    .line 1091
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->N:Lcom/google/android/apps/common/offerslib/d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/apps/common/offerslib/d;->a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;ILjava/lang/String;)V

    .line 1092
    return-void

    .line 1074
    :pswitch_17
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->U:Lcom/google/android/apps/common/offerslib/a;

    invoke-virtual {v0}, Lcom/google/android/apps/common/offerslib/a;->d()Lcom/google/android/apps/common/offerslib/b;

    move-result-object v0

    iget-object p2, v0, Lcom/google/android/apps/common/offerslib/b;->b:Ljava/lang/String;

    goto :goto_3

    .line 1077
    :pswitch_20
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->U:Lcom/google/android/apps/common/offerslib/a;

    invoke-virtual {v0}, Lcom/google/android/apps/common/offerslib/a;->d()Lcom/google/android/apps/common/offerslib/b;

    move-result-object v0

    iget-object p2, v0, Lcom/google/android/apps/common/offerslib/b;->a:Ljava/lang/String;

    goto :goto_3

    .line 1080
    :pswitch_29
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->U:Lcom/google/android/apps/common/offerslib/a;

    invoke-virtual {v0}, Lcom/google/android/apps/common/offerslib/a;->d()Lcom/google/android/apps/common/offerslib/b;

    move-result-object v0

    iget-object p2, v0, Lcom/google/android/apps/common/offerslib/b;->c:Ljava/lang/String;

    goto :goto_3

    .line 1072
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_17
        :pswitch_20
        :pswitch_29
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/apps/common/offerslib/a;Landroid/accounts/Account;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/google/android/apps/common/offerslib/a;->a()V

    .line 161
    sget-object v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->P:Lcom/google/commerce/wireless/topiary/D;

    if-nez v0, :cond_d

    .line 162
    invoke-static {p0}, Lcom/google/commerce/wireless/topiary/D;->a(Landroid/content/Context;)Lcom/google/commerce/wireless/topiary/D;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->P:Lcom/google/commerce/wireless/topiary/D;

    .line 166
    :cond_d
    sget-object v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->ac:Lcom/google/commerce/wireless/topiary/S;

    invoke-static {p0, p2, v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Landroid/content/Context;Landroid/accounts/Account;Lcom/google/commerce/wireless/topiary/S;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 167
    const-string v0, "OfferDetailsFragment"

    const-string v1, "Clearing cookies and preloading offer details."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    sget-object v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->P:Lcom/google/commerce/wireless/topiary/D;

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/D;->c()V

    .line 169
    sget-object v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->P:Lcom/google/commerce/wireless/topiary/D;

    invoke-virtual {p1}, Lcom/google/android/apps/common/offerslib/a;->f()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->ac:Lcom/google/commerce/wireless/topiary/S;

    new-instance v3, Lcom/google/android/apps/common/offerslib/f;

    invoke-direct {v3}, Lcom/google/android/apps/common/offerslib/f;-><init>()V

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/google/commerce/wireless/topiary/D;->a(Ljava/lang/String;Lcom/google/commerce/wireless/topiary/S;Landroid/accounts/Account;Lcom/google/commerce/wireless/topiary/E;)V

    .line 178
    :cond_31
    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;ILjava/lang/String;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->c(Z)V

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 488
    if-nez p0, :cond_8

    .line 489
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_8
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/google/commerce/wireless/topiary/S;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 886
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->R:Lcom/google/commerce/wireless/topiary/HybridWebView;

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->clearHistory()V

    .line 887
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->R:Lcom/google/commerce/wireless/topiary/HybridWebView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/google/commerce/wireless/topiary/HybridWebView;->requestFocus(I)Z

    .line 890
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->O:Lcom/google/commerce/wireless/topiary/HybridWebViewControl;

    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->R:Lcom/google/commerce/wireless/topiary/HybridWebView;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->a(Ljava/lang/String;Lcom/google/commerce/wireless/topiary/S;Lcom/google/commerce/wireless/topiary/HybridWebView;)V

    .line 891
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Ljava/lang/String;)V

    .line 902
    invoke-direct {p0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->x()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 903
    const-string v0, "dispatchEvent"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/common/offerslib/z;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 905
    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->R:Lcom/google/commerce/wireless/topiary/HybridWebView;

    invoke-virtual {v1, v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->loadUrl(Ljava/lang/String;)V

    .line 907
    :cond_3a
    return-void
.end method

.method private a(Landroid/accounts/Account;Landroid/content/Context;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 244
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 245
    const-string v0, "preferences_last_account_used_to_display_offer_details"

    const/4 v1, 0x0

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    const-string v1, "OfferDetailsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Comparing current account :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to last used account :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    if-nez v0, :cond_31

    if-nez p1, :cond_41

    :cond_31
    if-eqz v0, :cond_35

    if-eqz p1, :cond_41

    :cond_35
    if-eqz v0, :cond_59

    if-eqz p1, :cond_59

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    :cond_41
    const/4 v0, 0x1

    move v1, v0

    .line 253
    :goto_43
    if-eqz v1, :cond_58

    .line 255
    if-eqz p1, :cond_5c

    .line 256
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "preferences_last_account_used_to_display_offer_details"

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 260
    :goto_53
    iget-object v2, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->W:Lcom/google/android/apps/common/offerslib/u;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/common/offerslib/u;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 263
    :cond_58
    return v1

    .line 248
    :cond_59
    const/4 v0, 0x0

    move v1, v0

    goto :goto_43

    .line 258
    :cond_5c
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "preferences_last_account_used_to_display_offer_details"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_53
.end method

.method private static a(Landroid/content/Context;Landroid/accounts/Account;Lcom/google/commerce/wireless/topiary/S;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    sget-object v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->P:Lcom/google/commerce/wireless/topiary/D;

    if-nez v0, :cond_a

    .line 230
    invoke-static {p0}, Lcom/google/commerce/wireless/topiary/D;->a(Landroid/content/Context;)Lcom/google/commerce/wireless/topiary/D;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->P:Lcom/google/commerce/wireless/topiary/D;

    .line 233
    :cond_a
    if-eqz p1, :cond_20

    sget-object v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->P:Lcom/google/commerce/wireless/topiary/D;

    invoke-virtual {v0, p1}, Lcom/google/commerce/wireless/topiary/D;->a(Landroid/accounts/Account;)Lcom/google/commerce/wireless/topiary/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/commerce/wireless/topiary/f;->a(Lcom/google/commerce/wireless/topiary/S;)Lcom/google/commerce/wireless/topiary/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/V;->a()Lcom/google/commerce/wireless/topiary/W;

    move-result-object v0

    sget-object v1, Lcom/google/commerce/wireless/topiary/W;->a:Lcom/google/commerce/wireless/topiary/W;

    if-eq v0, v1, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method static synthetic b(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->X:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 856
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->U:Lcom/google/android/apps/common/offerslib/a;

    invoke-virtual {v0}, Lcom/google/android/apps/common/offerslib/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 857
    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_35

    .line 858
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 860
    :cond_35
    sget-object v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->ac:Lcom/google/commerce/wireless/topiary/S;

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Ljava/lang/String;Lcom/google/commerce/wireless/topiary/S;)V

    .line 861
    return-void
.end method

.method static synthetic c(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Ljava/util/HashMap;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->ae:Ljava/util/HashMap;

    return-object v0
.end method

.method private c(Z)V
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 508
    iput v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->ab:I

    .line 509
    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->Z:Landroid/view/View;

    if-eqz p1, :cond_b

    :goto_7
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 510
    return-void

    .line 509
    :cond_b
    const/16 v0, 0x8

    goto :goto_7
.end method

.method static synthetic d(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Lcom/google/android/apps/common/offerslib/c;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->S:Lcom/google/android/apps/common/offerslib/c;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Lcom/google/commerce/wireless/topiary/HybridWebView;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->R:Lcom/google/commerce/wireless/topiary/HybridWebView;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Lcom/google/android/apps/common/offerslib/i;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->Q:Lcom/google/android/apps/common/offerslib/i;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Z
    .registers 2
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->y()Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)I
    .registers 2
    .parameter

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->ab:I

    return v0
.end method

.method static synthetic i(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->T:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic v()Lcom/google/commerce/wireless/topiary/D;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->P:Lcom/google/commerce/wireless/topiary/D;

    return-object v0
.end method

.method private w()V
    .registers 4

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->d()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_7

    .line 209
    :cond_6
    :goto_6
    return-void

    .line 190
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->d()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->V:Landroid/accounts/Account;

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Landroid/accounts/Account;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 199
    :cond_17
    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->V:Landroid/accounts/Account;

    sget-object v2, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->ad:Lcom/google/commerce/wireless/topiary/S;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Landroid/content/Context;Landroid/accounts/Account;Lcom/google/commerce/wireless/topiary/S;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 202
    sget-object v1, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->P:Lcom/google/commerce/wireless/topiary/D;

    if-nez v1, :cond_2b

    .line 203
    invoke-static {v0}, Lcom/google/commerce/wireless/topiary/D;->a(Landroid/content/Context;)Lcom/google/commerce/wireless/topiary/D;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->P:Lcom/google/commerce/wireless/topiary/D;

    .line 206
    :cond_2b
    const-string v0, "OfferDetailsFragment"

    const-string v1, "Account not authenticated, clearing all cookies."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    sget-object v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->P:Lcom/google/commerce/wireless/topiary/D;

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/D;->c()V

    goto :goto_6
.end method

.method private x()Z
    .registers 3

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->R:Lcom/google/commerce/wireless/topiary/HybridWebView;

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->R:Lcom/google/commerce/wireless/topiary/HybridWebView;

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->U:Lcom/google/android/apps/common/offerslib/a;

    invoke-virtual {v1}, Lcom/google/android/apps/common/offerslib/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private y()Z
    .registers 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->Z:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private z()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 871
    new-instance v0, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;

    invoke-virtual {p0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->d()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->s()Landroid/accounts/Account;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->P:Lcom/google/commerce/wireless/topiary/D;

    new-instance v4, Lcom/google/android/apps/common/offerslib/g;

    invoke-direct {v4, p0}, Lcom/google/android/apps/common/offerslib/g;-><init>(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/google/commerce/wireless/topiary/D;Lcom/google/commerce/wireless/topiary/z;)V

    iput-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->O:Lcom/google/commerce/wireless/topiary/HybridWebViewControl;

    .line 873
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->O:Lcom/google/commerce/wireless/topiary/HybridWebViewControl;

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/commerce/wireless/topiary/HybridWebView;

    iput-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->R:Lcom/google/commerce/wireless/topiary/HybridWebView;

    .line 875
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->Y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 876
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->Y:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->O:Lcom/google/commerce/wireless/topiary/HybridWebViewControl;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 877
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->O:Lcom/google/commerce/wireless/topiary/HybridWebViewControl;

    invoke-virtual {v0, v5}, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->setVisibility(I)V

    .line 878
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->Y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 879
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x2

    .line 269
    invoke-virtual {p0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->d()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 270
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 271
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 274
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 277
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 280
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 282
    iput-object v2, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->Y:Landroid/widget/RelativeLayout;

    .line 284
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-direct {v2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 285
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 288
    const/16 v3, 0x11

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 289
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 291
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 292
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 293
    iput-object v2, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->Z:Landroid/view/View;

    .line 295
    return-object v1
.end method

.method public a(IILandroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 932
    const/16 v0, 0x4d

    if-ne p1, v0, :cond_1a

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1a

    .line 934
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->ae:Ljava/util/HashMap;

    const-string v1, "scan_qr"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "SCAN_RESULT"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    :cond_1a
    return-void
.end method

.method public a(Landroid/accounts/Account;)V
    .registers 3
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->V:Landroid/accounts/Account;

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->O:Lcom/google/commerce/wireless/topiary/HybridWebViewControl;

    if-eqz v0, :cond_e

    .line 144
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->O:Lcom/google/commerce/wireless/topiary/HybridWebViewControl;

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->a()V

    .line 145
    invoke-direct {p0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->z()V

    .line 147
    :cond_e
    return-void
.end method

.method public a(Lcom/google/android/apps/common/offerslib/a;)V
    .registers 2
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->U:Lcom/google/android/apps/common/offerslib/a;

    .line 132
    return-void
.end method

.method public a(Lcom/google/android/apps/common/offerslib/d;)V
    .registers 2
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->N:Lcom/google/android/apps/common/offerslib/d;

    .line 377
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->c()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->U:Lcom/google/android/apps/common/offerslib/a;

    invoke-virtual {v0}, Lcom/google/android/apps/common/offerslib/a;->g()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 495
    const-string v0, "OfferDetailsFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_13
    return-void
.end method

.method public b(Landroid/content/Intent;)V
    .registers 5
    .parameter

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->U:Lcom/google/android/apps/common/offerslib/a;

    invoke-virtual {v0}, Lcom/google/android/apps/common/offerslib/a;->a()V

    .line 414
    invoke-direct {p0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->w()V

    .line 415
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 416
    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->U:Lcom/google/android/apps/common/offerslib/a;

    invoke-virtual {v1}, Lcom/google/android/apps/common/offerslib/a;->f()Ljava/lang/String;

    move-result-object v1

    .line 418
    const-string v2, "com.google.android.apps.offers.VIEW_OFFER_DETAILS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 419
    const-string v0, "processIntent ACTION_SHOW_OFFER"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Ljava/lang/String;)V

    .line 420
    const-string v0, "offer_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->X:Ljava/lang/String;

    .line 421
    const-string v0, "offer_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "offer_id"

    invoke-static {v0, v2}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    const-string v0, "offer_namespace"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "offer_namespace"

    invoke-static {v0, v2}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    invoke-direct {p0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->x()Z

    move-result v0

    .line 426
    invoke-static {p1, v1, v0}, Lcom/google/android/apps/common/offerslib/y;->a(Landroid/content/Intent;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->T:Ljava/lang/String;

    .line 445
    :goto_47
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->T:Ljava/lang/String;

    sget-object v1, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->ad:Lcom/google/commerce/wireless/topiary/S;

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Ljava/lang/String;Lcom/google/commerce/wireless/topiary/S;)V

    .line 446
    return-void

    .line 427
    :cond_4f
    const-string v2, "com.google.android.apps.offers.VIEW_MY_OFFERS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 428
    const-string v0, "processIntent ACTION_SHOW_MY_OFFERS"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Ljava/lang/String;)V

    .line 429
    invoke-static {v1}, Lcom/google/android/apps/common/offerslib/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->T:Ljava/lang/String;

    goto :goto_47

    .line 430
    :cond_63
    const-string v2, "com.google.android.apps.offers.VIEW_CUSTOM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 431
    const-string v0, "processIntent ACTION_SHOW_CUSTOM_VIEW"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Ljava/lang/String;)V

    .line 432
    const-string v0, "page_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "page_name"

    invoke-static {v0, v2}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    invoke-static {p1, v1}, Lcom/google/android/apps/common/offerslib/y;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->T:Ljava/lang/String;

    goto :goto_47

    .line 435
    :cond_82
    const-string v2, "com.google.android.apps.offers.PROCESS_QR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processIntent ACTION_PROCESS_QR - got qr: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "SCAN_RESULT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Ljava/lang/String;)V

    .line 438
    const-string v0, "SCAN_RESULT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SCAN_RESULT"

    invoke-static {v0, v2}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    invoke-static {p1, v1}, Lcom/google/android/apps/common/offerslib/y;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->T:Ljava/lang/String;

    goto :goto_47

    .line 442
    :cond_b8
    const-string v0, "processIntent action not recognized"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Ljava/lang/String;)V

    .line 443
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action not recognized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method b(Z)V
    .registers 4
    .parameter

    .prologue
    .line 515
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->R:Lcom/google/commerce/wireless/topiary/HybridWebView;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->R:Lcom/google/commerce/wireless/topiary/HybridWebView;

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 516
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->R:Lcom/google/commerce/wireless/topiary/HybridWebView;

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/HybridWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz p1, :cond_1b

    const/4 v1, 0x0

    :goto_17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 518
    :cond_1a
    return-void

    .line 516
    :cond_1b
    const/16 v1, 0x8

    goto :goto_17
.end method

.method public c(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 300
    invoke-super {p0, p1}, Landroid/support/v4/app/f;->c(Landroid/os/Bundle;)V

    .line 303
    if-eqz p1, :cond_49

    .line 304
    const-string v0, "param_app_settings"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 305
    const-string v0, "param_app_settings"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/common/offerslib/a;

    iput-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->U:Lcom/google/android/apps/common/offerslib/a;

    .line 307
    :cond_17
    const-string v0, "param_account"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 308
    const-string v0, "param_account"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->V:Landroid/accounts/Account;

    .line 310
    :cond_29
    const-string v0, "param_requested_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 311
    const-string v0, "param_requested_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->T:Ljava/lang/String;

    .line 313
    :cond_39
    const-string v0, "param_offer_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 314
    const-string v0, "param_offer_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->X:Ljava/lang/String;

    .line 318
    :cond_49
    sget-object v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->P:Lcom/google/commerce/wireless/topiary/D;

    if-nez v0, :cond_5b

    .line 319
    invoke-virtual {p0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->d()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/commerce/wireless/topiary/D;->a(Landroid/content/Context;)Lcom/google/commerce/wireless/topiary/D;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->P:Lcom/google/commerce/wireless/topiary/D;

    .line 321
    :cond_5b
    new-instance v0, Lcom/google/android/apps/common/offerslib/u;

    invoke-direct {v0, p0}, Lcom/google/android/apps/common/offerslib/u;-><init>(Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->W:Lcom/google/android/apps/common/offerslib/u;

    .line 323
    invoke-direct {p0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->z()V

    .line 325
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->N:Lcom/google/android/apps/common/offerslib/d;

    if-nez v0, :cond_71

    .line 326
    new-instance v0, Lcom/google/android/apps/common/offerslib/d;

    invoke-direct {v0}, Lcom/google/android/apps/common/offerslib/d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Lcom/google/android/apps/common/offerslib/d;)V

    .line 328
    :cond_71
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->S:Lcom/google/android/apps/common/offerslib/c;

    if-nez v0, :cond_89

    .line 329
    new-instance v0, Lcom/google/android/apps/common/offerslib/c;

    invoke-direct {v0}, Lcom/google/android/apps/common/offerslib/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->S:Lcom/google/android/apps/common/offerslib/c;

    .line 330
    if-eqz p1, :cond_89

    .line 331
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->S:Lcom/google/android/apps/common/offerslib/c;

    const-string v1, "param_internal_url_whitelist"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/common/offerslib/c;->a(Ljava/lang/String;)V

    .line 336
    :cond_89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->ae:Ljava/util/HashMap;

    .line 338
    if-eqz p1, :cond_a0

    .line 342
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->R:Lcom/google/commerce/wireless/topiary/HybridWebView;

    invoke-virtual {v0, p1}, Lcom/google/commerce/wireless/topiary/HybridWebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 343
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->R:Lcom/google/commerce/wireless/topiary/HybridWebView;

    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->Q:Lcom/google/android/apps/common/offerslib/i;

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Lcom/google/commerce/wireless/topiary/HybridWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    :cond_a0
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->U:Lcom/google/android/apps/common/offerslib/a;

    if-eqz v0, :cond_9

    .line 355
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->U:Lcom/google/android/apps/common/offerslib/a;

    invoke-virtual {v0}, Lcom/google/android/apps/common/offerslib/a;->a()V

    .line 357
    :cond_9
    invoke-super {p0, p1}, Landroid/support/v4/app/f;->d(Landroid/os/Bundle;)V

    .line 358
    const-string v0, "param_app_settings"

    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->U:Lcom/google/android/apps/common/offerslib/a;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 359
    const-string v0, "param_account"

    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->V:Landroid/accounts/Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 360
    const-string v0, "param_requested_url"

    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->T:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v0, "param_internal_url_whitelist"

    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->S:Lcom/google/android/apps/common/offerslib/c;

    invoke-virtual {v1}, Lcom/google/android/apps/common/offerslib/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v0, "param_offer_type"

    iget-object v1, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->X:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->R:Lcom/google/commerce/wireless/topiary/HybridWebView;

    invoke-virtual {v0, p1}, Lcom/google/commerce/wireless/topiary/HybridWebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 365
    return-void
.end method

.method public f()V
    .registers 1

    .prologue
    .line 349
    invoke-super {p0}, Landroid/support/v4/app/f;->f()V

    .line 350
    return-void
.end method

.method public j()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 369
    iput-object v1, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->aa:Landroid/os/Handler;

    .line 370
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->O:Lcom/google/commerce/wireless/topiary/HybridWebViewControl;

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->a()V

    .line 371
    iput-object v1, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->O:Lcom/google/commerce/wireless/topiary/HybridWebViewControl;

    .line 372
    invoke-super {p0}, Landroid/support/v4/app/f;->j()V

    .line 373
    return-void
.end method

.method public r()Z
    .registers 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->O:Lcom/google/commerce/wireless/topiary/HybridWebViewControl;

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 477
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->O:Lcom/google/commerce/wireless/topiary/HybridWebViewControl;

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/HybridWebViewControl;->d()V

    .line 478
    const/4 v0, 0x1

    .line 480
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected s()Landroid/accounts/Account;
    .registers 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->V:Landroid/accounts/Account;

    return-object v0
.end method

.method t()V
    .registers 4

    .prologue
    .line 913
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.zxing.client.android.SCAN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 916
    const-string v1, "SCAN_MODE"

    const-string v2, "QR_CODE_MODE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 917
    const/16 v1, 0x4d

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->a(Landroid/content/Intent;I)V

    .line 918
    return-void
.end method

.method u()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1098
    iget v1, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->ab:I

    if-eqz v1, :cond_c

    .line 1099
    iget v1, p0, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->ab:I

    if-ne v1, v0, :cond_d

    :goto_9
    invoke-direct {p0, v0}, Lcom/google/android/apps/common/offerslib/OfferDetailsFragment;->c(Z)V

    .line 1101
    :cond_c
    return-void

    .line 1099
    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method
