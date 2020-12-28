package com.niafikra.dimension;

import com.niafikra.dimension.core.navigation.MainNavigationLayout;
import com.niafikra.dimension.core.navigation.Nav;
import com.vaadin.flow.component.html.H2;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;
import org.vaadin.firitin.components.orderedlayout.VVerticalLayout;

import static com.niafikra.dimension.HomeView.PATH;
import static com.niafikra.dimension.core.navigation.Nav.Parent.ROOT;
import static com.vaadin.flow.component.icon.VaadinIcon.HOME;

@Nav(value = "Home",
        icon = HOME,
        tree = {@Nav.Parent(ROOT)})
@Route(value = PATH, layout = MainNavigationLayout.class)
@PageTitle("Dimension Home")
public class HomeView extends VVerticalLayout {

    public static final String PATH = "";

    public HomeView() {
        setMargin(true);
        add(new H2("Hello from Dimension Team"));
        setDefaultHorizontalComponentAlignment(Alignment.CENTER);
    }

}
