.class public Lcom/anddoes/launcher/preference/IconListPreference;
.super Landroid/preference/ListPreference;
.source "SourceFile"


# instance fields
.field private a:[I

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/preference/IconListPreference;->a:[I

    .line 37
    iput-object p1, p0, Lcom/anddoes/launcher/preference/IconListPreference;->b:Landroid/content/Context;

    .line 39
    sget-object v0, Lcom/anddoes/launcher/kd;->f:[I

    .line 38
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 42
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 41
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 44
    array-length v0, v3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/anddoes/launcher/preference/IconListPreference;->a:[I

    move v0, v1

    .line 46
    :goto_28
    array-length v4, v3

    if-lt v0, v4, :cond_2f

    .line 60
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    return-void

    .line 47
    :cond_2f
    aget-object v4, v3, v0

    .line 48
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_62

    .line 50
    aget-object v5, v3, v0

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 51
    aget-object v6, v3, v0

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 49
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 53
    iget-object v5, p0, Lcom/anddoes/launcher/preference/IconListPreference;->a:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 54
    const-string v7, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 53
    invoke-virtual {v6, v4, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v5, v0

    .line 46
    :goto_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 56
    :cond_62
    iget-object v4, p0, Lcom/anddoes/launcher/preference/IconListPreference;->a:[I

    aput v1, v4, v0

    goto :goto_5f
.end method

.method static synthetic a(Lcom/anddoes/launcher/preference/IconListPreference;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/anddoes/launcher/preference/IconListPreference;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .registers 8
    .parameter

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/IconListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/preference/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    .line 66
    new-instance v0, Lcom/anddoes/launcher/preference/d;

    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/IconListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 67
    invoke-virtual {p0}, Lcom/anddoes/launcher/preference/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/anddoes/launcher/preference/IconListPreference;->a:[I

    move-object v1, p0

    .line 66
    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/preference/d;-><init>(Lcom/anddoes/launcher/preference/IconListPreference;Landroid/content/Context;[Ljava/lang/CharSequence;[II)V

    .line 69
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 71
    return-void
.end method
