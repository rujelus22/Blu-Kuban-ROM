.class Lcom/estrongs/android/pop/view/js;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/js;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/js;)Lcom/estrongs/android/pop/view/PopPreferenceActivity;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/js;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/pop/view/js;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->aj()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/util/a;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/js;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    new-instance v3, Lcom/estrongs/android/pop/view/jt;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/pop/view/jt;-><init>(Lcom/estrongs/android/pop/view/js;Ljava/lang/String;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/estrongs/android/util/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/android/util/e;)V

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/estrongs/android/util/a;->a:Z

    invoke-virtual {v1}, Lcom/estrongs/android/util/a;->a()V

    const/4 v0, 0x1

    return v0
.end method
