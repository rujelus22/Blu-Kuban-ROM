.class Lcom/estrongs/android/pop/view/iw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/iw;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/iw;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->d(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    const/4 v0, 0x1

    return v0
.end method
